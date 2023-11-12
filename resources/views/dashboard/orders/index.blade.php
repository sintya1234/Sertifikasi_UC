@extends('dashboard.layouts.main')
@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Data Order</h1>
    </div>

    @if (session()->has('success'))
        <div class="alert alert-success col-lg-8" role="alert">
            {{ session('success') }}
        </div>
    @endif


    <div class="table-responsive col-lg-8">
        <a href="/dashboard/orders/create " class="btn btn-primary mb-3">Create new post</a>
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Nama Customer</th>
                    <th scope="col">Email Customer</th>
                    <th scope="col">Total biaya</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($orders as $order)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $order->customer->nama }}</td>
                        <td>{{ $order->customer->no_telepon }}</td>
                        <td>{{ $order->total_biaya }} </td>
                        <td>{{ $order->status }}</td>
                        <td>
                            <a href="/dashboard/orders/{{ $order->id }}" class="btn btn-dark"><span
                                    data-feather="eye"></span></a>
                            <a href="/dashboard/orders/{{ $order->id }}/edit" class="btn btn-info"><span
                                    data-feather="edit"></span></a>

                            <form action="/dashboard/orders/{{ $order->id }}" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="badge bg-danger border-0" onclick="return confirm('Beneran mau hapus?')">
                                    <span data-feather="x-circle"></span>
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>




        </table>
    </div>
@endsection
