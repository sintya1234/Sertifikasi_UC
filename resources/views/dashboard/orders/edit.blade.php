@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit post</h1>
    </div>
    <div class="col-lg-8">
        <form method="post" action="/dashboard/orders/{{ $order->id }}" class="mb-5">
            {{-- ost-ost-">postkepostdikebungmasukkes --}}
            @method('put')
            @csrf
            <div class="mb-3">
                <label for="nama" class="form-label">Nama</label>
                <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" required
                    autofocus value="{{ old('nama', $order->customer->nama) }}">
                @error('nama')
                    <div class="invalid-feedback">
                        {{ $message }}
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="alamat" class="form-label">Alamat</label>
                    <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" required
                        autofocus value="{{ old('alamat', $order->customer->alamat) }}">
                    @error('alamat')
                        <div class="invalid-feedback">
                            {{ $message }}
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label for="no_telepon" class="form-label">Nomor Telepon</label>
                        <input type="text" class="form-control @error('no_telepon') is-invalid @enderror" id="no_telepon" name="no_telepon" required
                            autofocus value="{{ old('no_telepon', $order->customer->no_telepon) }}">
                        @error('no_telepon')
                            <div class="invalid-feedback">
                                {{ $message }}
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="id_card" class="form-label">id_card</label>
                            <input type="text" class="form-control @error('id_card') is-invalid @enderror" id="id_card" name="id_card" required
                                autofocus value="{{ old('id_card',  $order->customer->id_card) }}">
                            @error('id_card')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="status" class="form-label">status</label>
                                <input type="text" class="form-control @error('id_card') is-invalid @enderror" id="status" name="status" required
                                    autofocus value="{{ old('status', $order->status) }}">
                                @error('status')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    @enderror
                                </div>

                    <button type="submit" class="btn btn-primary">Update Order</button>
        </form>
    </div>

    {{-- buat ngilangin tambah file --}}
    <script>
        document.addEventListener('trix-file-accept', function(e) {
            e.preventDefault();
        })
    </script>

@endsection
