//
//  CalculatorBeratBadan.swift
//  BeratBadanIdeal
//
//  Created by Ade Dwi Prayitno on 05/09/21.
//

import UIKit

struct CalculatorBeratBadan {
    var bi: BI?
    
    mutating func calculateBeratBadan(_ tinggi: Double, _ gender: String){
        var hasil: Double = 20
        
        if gender == "Pria" {
            hasil = (tinggi - 100) - ((tinggi - 100) * 0.1)
        }else{
            hasil = (tinggi - 100) - ((tinggi - 100) * 0.15)
        }
        bi = BI(hasil: hasil)
    }
    
    func getHasil() -> String {
        return String(format: "%.1f", bi?.hasil ?? 0.0)
    }
}
