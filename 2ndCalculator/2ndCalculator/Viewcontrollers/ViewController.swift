//
//  ViewController.swift
//  2ndCalculator
//
//  Created by ins25k on 2019/10/24.
//  Copyright © 2019 ins25k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isTypingNum = false
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var btnPlus: UIButton!
    
    @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var btnEqual: UIButton!
   
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    
    
    @IBOutlet weak var btnMulti: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    
    
    @IBOutlet weak var btnDivide: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    
   
   //Append Digit Action
    @IBAction func InputBtn(theButton:UIButton){
     
         let number = theButton.currentTitle!
        
        if isTypingNum{
        
            displayLabel.text = displayLabel.text! + number
            
        }
        else{
            displayLabel.text = number
            isTypingNum = true
        }
    }
    
    var operandStack = [Double]()
    var binaryoperation = [String]()
    var firstTimeInputNum = true
    
    var displayVal : Double{
        get{
            ////  여기가 문제가 되는거 같은데 ㅠㅠ
            ////  계산을 했을때 왜 값이 안나오고
            ////  이상한 값이 나오는지,,,ㅠㅠ
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            return Double(numberFormatter.numberStyle.rawValue)
            
        }
        set{
            displayLabel.text = "\(newValue)"
            isTypingNum = false
        }
    }
    
    @IBAction func Operate(sender:UIButton){
        isTypingNum = false
        var equalOperand = ""
        var Operation = ""
        if sender.currentTitle == "="{
            equalOperand = binaryoperation.last ?? ""
        }else{
            Operation = sender.currentTitle!
        }
        if operandStack.count == 1 && binaryoperation.count == 1 {
            operandStack.append(displayVal)
        }
        if operandStack.count == 2{
            if equalOperand == binaryoperation.last ?? ""{
                switch equalOperand{
                case "×":
                    displayVal = operandStack[0] * operandStack[1]
                    operandStack[0] = displayVal
                case "÷":
                    displayVal = operandStack[0] / operandStack[1]
                    operandStack[0] = displayVal
                case "+":
                    displayVal = operandStack[0] + operandStack[1]
                    operandStack[0] = displayVal
                case "-":
                    displayVal = operandStack[0] - operandStack[1]
                    operandStack[0] = displayVal
                    
                default: break
                    
                }
            }
        
        else{
                          let Operation = binaryoperation.last ?? "";
                          switch Operation{
                              case "×":
                                  displayVal = operandStack[0] * operandStack[1]
                              operandStack[0] = displayVal
                                  operandStack.removeLast()
                              
                              case "÷":
                                  displayVal = operandStack[0] / operandStack[1]
                              operandStack[0] = displayVal
                                  operandStack.removeLast()
                              
                              case "+":
                                  displayVal = operandStack[0] + operandStack[1]
                                  operandStack[0] = displayVal
                                  operandStack.removeLast()
                              case "-":
                                  displayVal = operandStack[0] - operandStack[1]
                                  operandStack[0] = displayVal
                                      operandStack.removeLast()
                              default: break
                              
                          }
                  
                }
            }
        if displayVal != 0{
            if firstTimeInputNum{
                operandStack.append(displayVal)
            }
            firstTimeInputNum = false
        }
        if Operation != ""{
            binaryoperation.append(Operation)
        }
        
    }
    @IBAction func ClearBtn(){
        
        operandStack.removeAll()
        binaryoperation.removeAll()
        displayLabel.text = "0"
        firstTimeInputNum = true
        isTypingNum = false
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    
    }
    
    
    //status Bar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}


//압력된 삭을 프론트에 보여주고 뒤에서 계산을 한뒤 라벨이 쏘아준다





