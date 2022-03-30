//
//  Pizza.swift
//  a2
//
//  

import Foundation

class pizza {
    let name: String
    let description: String
    let priceS: Float
    let priceM: Float
    let priceL: Float
    let photoName: String
    
    init(n:String, d:String, s:Float, m:Float, l:Float, p:String){
        self.name = n
        self.description = d
        self.priceS = s
        self.priceM = m
        self.priceL = l
        self.photoName = p
    }
}
