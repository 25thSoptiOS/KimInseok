//
//  ViewController.swift
//  flex
//
//  Created by ins25k on 2019/10/18.
//  Copyright © 2019 ins25k. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    
 
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    
    
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var stackViewLogin: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        //self.logoView.alpha = 0
        //idTextField.delegate = self
        
        loginBtn.layer.borderColor = UIColor.white.cgColor
        loginBtn.layer.borderWidth = 1.0
        loginBtn.layer.cornerRadius = 17
        loginBtn.layer.masksToBounds = true
        

    UIGraphicsBeginImageContext(self.bgView.frame.size)
        UIImage(named: "bgImage")?.draw(in: self.bgView.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.bgView.backgroundColor = UIColor(patternImage: image)
        
      KeyBoardObserver()

        self.idTextField.delegate = self
        self.pwTextField.delegate = self
        
        
        


    }


}

extension ViewController : UITextViewDelegate{
    
     func KeyBoardObserver() {
           NotificationCenter.default.addObserver(self, selector: #selector(upWardKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(downWardKeyboard), name: UIResponder.keyboardDidHideNotification, object: nil)
       }
    
    
       @objc func upWardKeyboard() {
           self.view.frame.origin.y = -120
       }
       
       @objc func downWardKeyboard() {
           self.view.frame.origin.y = 0
       }
       
       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
       }
}

   


