//
//  GaMobMelb.swift
//  GAMOBMELB
//
//  Created by ROHIT GOYAL on 17/04/2015.
//  Copyright (c) 2015 RohitGoyal. All rights reserved.
//

import Foundation

// 1
class TipCalculatorModel {
    
    // 2
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
    
}

