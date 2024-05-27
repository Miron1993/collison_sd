<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;
use App\Models\Customers;
use App\Models\CustomersInOutTime;
use App\Models\OrderProducts;
use App\Models\Orders;
use App\Models\ProductDiscounts;

class HomeController extends Controller
{
    public function index(){
        return view('home.index', [
            'products' => Products::all(),
        ]);
    }

    public function submit(Request $request){
        $request->validate([
            'in_time' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'address_1' => 'required',
            //'address_2' => 'required',
            'city' => 'required',
            'state' => 'required',
            'zipcode' => 'required',
            'item' => 'required',
            'quantity' => 'required',
            //'discount_code' => 'required',
        ]);
        // dd($request->all());
        $customer = Customers::create([
            'first_name' => $request->input('first_name'),
            'last_name' => $request->input('last_name'),
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            'address_1' => $request->input('address_1'),
            'address_2' => $request->input('address_2') ?? '',
            'city' => $request->input('city'),
            'state' => $request->input('state'),
            'zipcode' => $request->input('zipcode'),
        ]);
        CustomersInOutTime::create([
            'customer_id' => $customer->id,
            'in_time' => $request->in_time,
            'out_time' => date('Y-m-d H:i:s'),
        ]);

        $net_amount = 0;
        $net_discount = 0;
        $grand_total = 0;
        
        $order = Orders::create([
            'customer_id' => $customer->id,
            'first_name' => $request->input('first_name'),
            'last_name' => $request->input('last_name'),
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            'address_1' => $request->input('address_1'),
            'address_2' => $request->input('address_2') ?? '',
            'city' => $request->input('city'),
            'state' => $request->input('state'),
            'zipcode' => $request->input('zipcode'),
            'net_amount' => $net_amount,
            'net_discount' => $net_discount,
            'grand_total' => $grand_total,
        ]);

        foreach($request->item as $key => $item){
            $products = Products::find($item);
            $order_product = [
                'order_id' => $order->id,
                'product_id' => 0,
                'net_amount' => 0,
                'net_discount' => 0,
                'total_amount' => 0,
            ];
            if(!empty($products)){
                $order_product['product_id'] = $products->id;
                $order_product['net_amount'] = $products->price;
                $product_discounts = ProductDiscounts::where('code', $request->discount_code)->first();
                if(
                    !empty($product_discounts) && 
                    $product_discounts->product_id == $item && 
                    $request->quantity[$key] >= $product_discounts->quantity
                ){
                    if($product_discounts->discount_type == 'percentage'){
                        $order_product['net_discount'] = ($order_product['net_amount'] / 100 ) * $product_discounts->discount;
                    }
                }
                $order_product['total_amount'] = $order_product['net_amount'] - $order_product['net_discount'];
                OrderProducts::create($order_product);
                $net_amount += $order_product['net_amount'];
                $net_discount += $order_product['net_discount'];
                $grand_total += $order_product['total_amount'];
            }
        }
        $order->net_amount = $net_amount;
        $order->net_discount = $net_discount;
        $order->grand_total = $grand_total;
        $order->save();

        return redirect()->route('home');
    }
}
