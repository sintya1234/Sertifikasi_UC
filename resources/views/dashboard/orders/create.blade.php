@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Create new Order</h1>
    </div>
    <div class="col-lg-8">
        <form method="post" action="/dashboard/orders/" enctype="multipart/form-data">{{-- post ke post di kebung masuk ke store --}}
            @csrf

            <div class="mb-3">
                <label for="nama" class="form-label">nama</label>
                <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama"
                    required autofocus value="{{ old('nama') }}">
                @error('nama')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="alamat" class="form-label">Alamat</label>
                    <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="nama"
                        name="alamat" required autofocus value="{{ old('alamat') }}">
                    @error('alamat')
                        <div class="invalid-feedback">
                            {{ $message }}
                        @enderror
                    </div>


                    <div class="mb-3">
                        <label for="no_telepon" class="form-label">No Telpon</label>
                        <input type="text" class="form-control @error('no_telepon') is-invalid @enderror" id="no_telepon"
                            name="no_telepon" required autofocus value="{{ old('no_telepon') }}">
                        @error('no_telepon')
                            <div class="invalid-feedback">
                                {{ $message }}
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="id_card" class="form-label">ID card</label>
                        <input type="text" class="form-control @error('id_card') is-invalid @enderror" id="nama"
                            name="id_card" required autofocus value="{{ old('id_card') }}">
                        @error('id_card')
                            <div class="invalid-feedback">
                                {{ $message }}
                            @enderror
                        </div>

                        {{-- batas --}}
                        <div class="card">
                            <div class="card-header">
                                Kendaraan
                            </div>

                            <div class="card-body">
                                <table class="table" id="kendaraans_table">
                                    <thead>
                                        <tr>
                                            <th>Kendaraan</th>
                                            <th>Jumlah</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr id="kendaraan0">
                                            <td>
                                                <select name="kendaraans[]" class="form-control">
                                                    <option value="">-- choose kendaraan --</option>
                                                    @foreach ($kendaraans as $kendaraan)
                                                  
                                                            ?>
                                                        <option value="{{ $kendaraan->id }}">
                                                            
                                                            {{ $kendaraan->types->type . ' ' . $kendaraan->model }}
                                                            (${{ number_format($kendaraan->harga, 2) }})
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </td>
                                            <td>
                                                <input type="number" name="jumlah[]" class="form-control" value="1" />
                                            </td>
                                        </tr>
                                        <tr id="kendaraan1"></tr>
                                    </tbody>
                                </table>

                                <div class="row">
                                    <div class="col-md-12">
                                        <button id="add_row" class="btn btn-default pull-left">+ Add Row</button>
                                        <button id='delete_row' class="pull-right btn btn-danger">- Delete Row</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
                        </div>

                    </form>
    {{-- buat ngilangin tambah file --}}
    <script src="/js/main.js"></script>
</div>
@endsection
