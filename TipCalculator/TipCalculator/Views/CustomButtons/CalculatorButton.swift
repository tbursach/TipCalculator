//
//  CalculatorButton.swift
//  TipCalculator
//
//  Created by Trevor Bursach on 10/12/20.
//

import UIKit

class CalculatorButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
        self.addCornerRadius()
    }
    
} // END OF CLASS
