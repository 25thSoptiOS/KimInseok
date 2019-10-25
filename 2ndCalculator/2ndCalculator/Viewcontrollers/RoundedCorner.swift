//
//  RoundedCorner.swift
//  2ndCalculator
//
//  Created by ins25k on 2019/10/24.
//  Copyright © 2019 ins25k. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCorner: UIButton {

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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
