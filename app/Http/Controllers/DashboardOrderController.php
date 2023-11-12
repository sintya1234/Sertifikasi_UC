<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Customer_kendaraan;
use App\Models\Kendaraan;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Type;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

use function PHPSTORM_META\type;

class DashboardOrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        // $result = $this->createOrder();
        return view('dashboard.orders.index', [
            'orders' => Order::all()
            // 'result' => $result
        ]); 
       }
    

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return view('dashboard.posts.create', [
        //     'categories' => Category::all()
        // ]);

        // $kendaraans = Kendaraan::all();
        // return view('dashboard.orders.create', compact('kendaraans'));

        $kendaraans = Kendaraan::with('types')->get();
        return view('dashboard.orders.create', compact('kendaraans'));
       
    
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
   
        //masukkan data customer baru ke tabel customer
        $validatedData = $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'no_telepon' => 'required',
            'id_card' => 'required',
            'kendaraans' => 'array|required',
            'kendaraans.*' => 'exists:kendaraans,id', // Pastikan kendaraan_id valid
            'jumlah' => 'array|required',
            'jumlah.*' => 'integer|min:1', // Pastikan jumlah adalah bilangan bulat positif
        ]);
    
        // Buat data pada tabel customers
        $customer = Customer::create([
            'nama' => $validatedData['nama'],
            'alamat' => $validatedData['alamat'],
            'no_telepon' => $validatedData['no_telepon'],
            'id_card' => $validatedData['id_card'],
        ]);
    
        // Ambil ID customer yang baru dibuat
        $customer_id = $customer->id;
    
        // Buat data pada tabel customer_kendaraan
        for ($i = 0; $i < count($validatedData['kendaraans']); $i++) {
            Customer_kendaraan::create([
                'customer_id' => $customer_id,
                'kendaraan_id' => $validatedData['kendaraans'][$i],
                'jumlah' => $validatedData['jumlah'][$i],
            ]);
        }

         Customer::create($validatedData);

        // $customer = Customer::create($request->all());
        // $kendaraans = $request->input('kendaraans', []);
        // $jumlahs= $request->input('jumlah', []);
        // for ($kendaraan=0; $kendaraan < count($kendaraans); $kendaraan++) {
        //     if ($kendaraans[$kendaraan] != '') {
        //         $customer->kendaraans()->attach($kendaraans[$kendaraan], ['jumlah' => $jumlahs[$kendaraan]]);
        //     }
        // }

        // return redirect('/dashboard/orders')->with('success', 'telah ditambahkan horee');
        return tap(redirect('/dashboard/orders')->with('success', 'telah ditambahkan horee'), function ($redirect) {
            $this->createOrder();
        });
        }

    public function createOrder()
    {
        $customerPurchases = DB::table('customer_kendaraans')
        ->select('customer_id', DB::raw('SUM(jumlah * harga) as total_biaya'), DB::raw('MAX(customer_kendaraans.created_at) as latest_purchase'))
        ->join('kendaraans', 'customer_kendaraans.kendaraan_id', '=', 'kendaraans.id')
        ->groupBy('customer_id')
        ->get();

    foreach ($customerPurchases as $purchase) {
        $latestPurchase = Carbon::parse($purchase->latest_purchase); 

       
        $existingOrder = Order::where('customer_id', $purchase->customer_id)
            ->whereDate('created_at', $latestPurchase->format('Y-m-d')) 
            ->first();

        if (!$existingOrder) {
            Order::create([
                'customer_id' => $purchase->customer_id,
                'total_biaya' => $purchase->total_biaya,
                'created_at' => $latestPurchase,
            ]);
        }

        

    }
}        
    
    


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post $post
     * @return \Illuminate\Http\Response
     */

    public function show(Order $order)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        return view('dashboard.orders.edit',[
            'order'=>$order,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        $rules = [
            'nama' => 'required',
            'alamat' => 'required',
            'no_telepon' => 'required',
            'id_card' => 'required',
            'status' => 'required',
        ];

        $validatedData=$request->validate($rules);
        Order::where('id', $order->id)->update($validatedData);

        $customerID = Order::find($order->id)->customer_id;
        Customer::where('id', $customerID)->update($validatedData);
        
        return redirect('/dashboard/orders')->with('success', 'order ini telah diupdet horee');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        Order::destroy($order->id);
        return redirect('/dashboard/orders')->with('success','order sudah dihapus');
    }
}
