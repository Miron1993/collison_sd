@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    <form action="{{ route('home-submit') }}" method="POST">
                        @csrf
                        <h3> Customers Details </h3>
                        <div class="row mt-3">
                            <div class="col">
                                <label for="in_time" class="form-label">In Time</label>
                                <input type="datetime-local" class="form-control" placeholder="In Time" aria-label="In Time" name="in_time" id="in_time">
                                @error('in_time')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="First name" aria-label="First name" name="first_name">
                                @error('first_name')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="last_name">
                                @error('last_name')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="email">
                                @error('email')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Phone" aria-label="Phone" name="phone">
                                @error('phone')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Address 1" aria-label="Address 1" name="address_1">
                                @error('address_1')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Address 2" aria-label="Address 2" name="address_2">
                                @error('address_2')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="City" aria-label="City" name="city">
                                @error('city')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="State" aria-label="State" name="state">
                                @error('state')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                                <!-- <select id="state" class="form-select" aria-label="State">
                                    <option selected>State</option>
                                    <option>...</option>
                                </select> -->
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Zip Code" aria-label="Zip Code" name="zipcode">
                                @error('zipcode')
                                <div class="alert alert-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        
                        <h3 class="mt-4"> Cart Details </h3>
                        <div class="items-div">
                            <div class="row mt-3 ">
                                <div class="col">
                                    <select id="item" class="form-select" aria-label="Item" name="item[]">
                                        <option>--- Item ---</option>
                                        @foreach($products as $product)
                                        <option value="{{ $product->id }}">{{ $product->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('item')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col">
                                    <input type="number" class="form-control" placeholder="Quantity" aria-label="Quantity" name="quantity[]">
                                    @error('quantity')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="Discount Code" aria-label="Discount Code" name="discount_code[]">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12 mt-3 text-end">
                                <button type="button" class="btn btn-success mb-3 add-item">add</button>
                            </div>
                        </div>
                        <div class="col-auto mt-3">
                            <button type="submit" class="btn btn-primary mb-3">Confirm</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
    $(document).ready(function(){
        let option_html = '@foreach($products as $product)<option value="{{ $product->id }}">{{ $product->name }}</option>@endforeach';
        $('.add-item').click(function(){
            let html = '<div class="row mt-3 "><div class="col"><select id="item" class="form-select" aria-label="Item" name="item[]"><option>--- Item ---</option>'+option_html+'</select></div><div class="col"><input type="number" class="form-control" placeholder="Quantity" aria-label="Quantity" name="quantity[]"></div><div class="col"><input type="text" class="form-control" placeholder="Discount Code" aria-label="Discount Code" name="discount_code[]"></div></div>';
            $('.items-div').append(html);
        });
    });
</script>
@endsection
