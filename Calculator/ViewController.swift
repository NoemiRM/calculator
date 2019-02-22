//
//  ViewController.swift
//  Calculator
//
//  Created by Pilar07 on 1/31/19.
//  Copyright © 2019 Done Task. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var numberFirst:Double = 0
    var numberSecond:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    enum Calculator:String{
        case suma = "+"
        case resta = "-"
        case division = "\\"
        case multiplicacion = "*"
        
        func operacion(numA:Int, numB:Int) -> Double {
            switch self {
            case .suma:
                return Double(numA + numB)
            case .resta:
                return Double(numA - numB)
            case .division:
                return Double(numA / numB)
            case .multiplicacion:
                return Double(numA * numB)
            }
        }
    }
    
    @IBAction func numberButton(_ sender: UIButton) {
        resultLabel.text = "\(resultLabel.text!)" + "\(sender.titleLabel?.text! ?? "")"
    
    }

}

