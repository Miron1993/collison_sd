@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    <form>
                        <h3> Customers Details </h3>
                        <div class="row mt-3">
                            <div class="col">
                                <label for="in_time" class="form-label">In Time</label>
                                <input type="datetime-local" class="form-control" placeholder="In Time" aria-label="In Time" name="in_time" id="in_time">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="First name" aria-label="First name" name="first_name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="last_name">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="email">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Phone" aria-label="Phone" name="phone">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Address 1" aria-label="Address 1" name="address 1">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Address 2" aria-label="Address 2" name="address ">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="City" aria-label="City" name="city">
                            </div>
                            <div class="col">
                                <select id="state" class="form-select" aria-label="State">
                                    <option selected>State</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Zip Code" aria-label="Zip Code" name="zipcode">
                            </div>
                        </div>
                        
                        <h3 class="mt-4"> Cart Details </h3>
                        
                        <div class="row mt-3">
                            <div class="col">
                                <select id="item" class="form-select" aria-label="Item">
                                    <option selected>Item</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <div class="col">
                                <input type="number" class="form-control" placeholder="Quantity" aria-label="Quantity" name="quantity">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Discount Code" aria-label="Discount Code" name="discount_code">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
