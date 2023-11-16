//
//  ViewController.swift
//  ExParameterRefactoring
//
//  Created by 김종권 on 2023/11/16.
//

import UIKit

struct Candle {
    var open: Int
    var close: Int
    var high: Int
    var low: Int
    
    func calculateMidpoint() -> Int {
        (high + low) / 2
    }
}

class ViewController: UIViewController {
    let exampleCandle = Candle(open: 50, close: 60, high: 70, low: 40)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let midpointString = exampleCandle.calculateMidpoint()
    }
    
    private func calculateMidPriceString(candle: Candle) -> String {
        let midPoint = candle.calculateMidpoint() % 2
        
        if midPoint % 2 == 0 {
            return "짝수인 mid price: \(midPoint)"
        } else {
            return "홀수인 mid price: \(midPoint)"
        }
    }
    
    private func refactor_calculateMidPriceString(high: Int, low: Int) -> String {
        let midPoint = ((high + low) / 2) % 2
        
        if midPoint % 2 == 0 {
            return "짝수인 mid price: \(midPoint)"
        } else {
            return "홀수인 mid price: \(midPoint)"
        }
    }
}
