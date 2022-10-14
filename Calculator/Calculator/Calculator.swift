//
//  Calculator.swift
//  Calculator
//
//  Created by greenthings on 2022/10/14.
//

import Foundation
import AVFoundation


struct Calculator{
    
    let synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()
    
    var result: String = ""
    
    
    var number1: Int = 0
    var number2: Int = 0
    
    
    //["+","*","-","/"]
    var operation: Character = "a"
    

    var record: [String] = []
    
    
    func speakResult(){
        let resultString = "Result is : \(result)"
        let utterance: AVSpeechUtterance = AVSpeechUtterance(string: resultString)
            synthesizer.speak(utterance)
    }
    
    func switchFunction(operation: Character,number1: Int, number2: Int) -> String{
        
        // 더하기, 빼기, 나누기, 곱하기 사칙연산.
        // 소수점이 필요한 녀석, -> 나누기
        var result: Float = 0
        
        switch operation{
            case "+":
                result = Float(number1 + number2)
            case "-":
                result = Float(number1 - number2)
            case "*":
                result = Float(number1 * number2)
            case "/":
                result = Float(number1) / Float(number2)
                // 1.0/7.0 = 0.147372678641786
                // 0 만 되겠죠
                // 문제
                // 0.14323123
                // 정답
                // 아래 주석 처리해도 에러 발생하지 않음.
                // return String(result)
            default:
                print("Liduqruase")
        }
        return String(result)
    }
    

    
}
