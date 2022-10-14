//
//  ViewController.swift
//  Calculator
//
//  Created by greenthings on 2022/10/13.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var textfield1: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var past: UILabel!
    
    var cal: Calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func equal(_ sender: Any) {
    
        cal.number2 = Int(textfield1.text ?? "") ?? 0
     
        let result = cal.switchFunction(operation: cal.operation, number1: cal.number1, number2: cal.number2)
        let recordResult = "\(cal.number1) \(cal.operation) \(cal.number2)"
        cal.result = result
        label.text = "Result: \(recordResult) = \(result)"
        
        cal.number1 = 0
        cal.number2 = 0
        
        textfield1.text = ""
        
        past.text! += "\(recordResult) = \(result)| "
        
        if cal.record.count == 3{
            cal.record.removeAll()
        }else{
            cal.record.append(recordResult)
        }

    }
    
    @IBAction func pressPlus(_ sender: Any) {
        cal.number1 =  Int(textfield1.text ?? "") ?? 0
        // " "으로 초기화 해주면 안됨.
        textfield1.text = ""
        cal.operation = "+"
    }
    
    @IBAction func pressMinus(_ sender: Any) {
        cal.number1 =  Int(textfield1.text ?? "") ?? 0

        textfield1.text = ""
        cal.operation = "-"
    }
    @IBAction func pressSquare(_ sender: Any) {
        cal.number1 =  Int(textfield1.text ?? "") ?? 0
        
        textfield1.text = ""
        cal.operation = "*"
    }
    
    @IBAction func pressDivide(_ sender: Any) {
        cal.number1 =  Int(textfield1.text ?? "") ?? 0

        textfield1.text = ""
        cal.operation = "/"
    }
    
    
    
    //  Nubmer Keypads
    @IBAction func zero(_ sender: Any) {
        textfield1.text! += "0"
    }
    
    @IBAction func one(_ sender: Any) {
        textfield1.text! += "1"
    }
    
    @IBAction func two(_ sender: Any) {
        textfield1.text! += "2"
    }
    
    @IBAction func three(_ sender: Any) {
        textfield1.text! += "3"
    }
    
    @IBAction func four(_ sender: Any) {
        textfield1.text! += "4"
    }
    @IBAction func five(_ sender: Any) {
        textfield1.text! += "5"
    }
    
    @IBAction func six(_ sender: Any) {
        textfield1.text! += "6"
    }
    
    @IBAction func seven(_ sender: Any) {
        textfield1.text! += "7"
    }
    
    @IBAction func eight(_ sender: Any) {
        textfield1.text! += "8"
    }
    
    @IBAction func nine(_ sender: Any) {
        textfield1.text! += "9"
    }
    
    @IBAction func pressClear(_ sender: Any) {
        textfield1.text = nil
        label.text = nil
    }
    
    
    @IBAction func pressErase(_ sender: Any) {
        let text = textfield1.text
        textfield1.text! = String(text!.dropLast())
    }
    
    
    
    
    
}


