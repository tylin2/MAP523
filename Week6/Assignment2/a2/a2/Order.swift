//
//  Order.swift
//  a2
//
//

import Foundation

class Order {
    var name: String = ""
    var size: String = ""
    var price: Float = 0
    var quantity: Int = 0
    var subtotal: Float {
        return price * Float(quantity)
    }
    let tax: Float = 0.13
    var finalTotal: Float {
        return round(subtotal * (1 + tax) * 100) / 100
    }
    
    init(){}
    
    func set(n:String, s:String, p: Float, q:Int){
        self.name = n
        self.size = s
        self.price = p
        self.quantity = q
    }
    
}
