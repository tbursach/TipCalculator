//
//  CalculatorTextField.swift
//  TipCalculator
//
//  Created by Trevor Bursach on 10/12/20.
//

import UIKit

class CalculatorTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
        
        self.addCornerRadius(radius: 10)
    }
    
} // END OF CLASS
