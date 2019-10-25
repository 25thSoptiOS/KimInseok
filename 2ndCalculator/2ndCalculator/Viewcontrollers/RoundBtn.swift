//
//  RoundBtn.swift
//  2ndCalculator
//
//  Created by ins25k on 2019/10/25.
//  Copyright © 2019 ins25k. All rights reserved.
//

import UIKit

 @IBDesignable
class RoundBtn: UIButton {


     //   override func viewDidLoad() {
       //     super.viewDidLoad()

            // Do any additional setup after loading the view.
       // }
        @IBInspectable var cornerRadius: CGFloat = 0{
            didSet {
                self.layer.cornerRadius = cornerRadius
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0{
            didSet {
                self.layer.borderWidth = borderWidth
            }
        }
        
        @IBInspectable var borderColor: UIColor = UIColor.clear{
            didSet{
                self.layer.borderColor = borderColor.cgColor
            }
            
        }
        
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
