//
//  CountryInfo.swift
//  FinalTest_Ting-Yeh
//
//

import Foundation

struct CountryInfo:Codable {
    
    var name:String
    var capital:String
    var code:String
    var pop:Int64
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case capital = "capital"
        case code = "alpha3Code"
        case pop = "population"
    }
    
    func encode(to encoder: Encoder) throws {
        // do nothing
    }
    
    init(from decoder: Decoder) throws {
        
        let response = try decoder.container(keyedBy: CodingKeys.self)
        
        self.name = try response.decodeIfPresent(String.self, forKey: .name) ?? ""
        self.capital = try response.decodeIfPresent(String.self, forKey: .capital) ?? ""
        self.code = try response.decodeIfPresent(String.self, forKey: .code) ?? ""
        self.pop = try response.decodeIfPresent(Int64.self, forKey: .pop) ?? 0
    }
    
}
