//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Trevor Bursach on 10/12/20.
//

import UIKit

extension UIColor {
    static let salmonAccent = UIColor(named: "salmonAccent")!
    static let tanAccent = UIColor(named: "tanAccent")!
    static let sandAccent = UIColor(named: "sandAccent")!
    static let grayishAccent = UIColor(named: "grayishAccent")!
    static let blueishAccent = UIColor(named: "blueishAccent")!
    static let whiteAccent = UIColor(named: "whiteAccent")!
}

extension UIView {
    
    func addCornerRadius(radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
}
