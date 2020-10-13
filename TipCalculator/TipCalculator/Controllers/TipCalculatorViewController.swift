//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Trevor Bursach on 10/12/20.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var checkTotalTextField: UITextField!
    @IBOutlet weak var commentsTextView: UITextView!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var fifteenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var tipTotalTextField: UITextField!
    @IBOutlet weak var totalTextField: UITextField!
    
    //MARK: - Properties
    
    var viewsLaidOut = false
    
    //MARK: - Lifecycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .grayishAccent
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if viewsLaidOut == false {
            setUpViews()
            viewsLaidOut = true
        }
    }
    
    //MARK: - Actions
    
    @IBAction func tenPercentButtonTapped(_ sender: Any) {
        DispatchQueue.main.async {
            self.view.backgroundColor = .salmonAccent
        }
        guard let checkTotal = checkTotalTextField.text, !checkTotal.isEmpty else { return }
        findTip(checkTotal: checkTotal.floatValue)
    }
    
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        DispatchQueue.main.async {
            self.view.backgroundColor = .sandAccent
        }
        guard let checkTotal = checkTotalTextField.text, !checkTotal.isEmpty else { return }
        findTip(checkTotal: checkTotal.floatValue)
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        DispatchQueue.main.async {
            self.view.backgroundColor = .blueishAccent
        }
        guard let checkTotal = checkTotalTextField.text, !checkTotal.isEmpty else { return }
        findTip(checkTotal: checkTotal.floatValue)
    }
    
    //MARK: - Helper Functions and Methods
    
    func setUpViews() {
        checkTotalTextField.backgroundColor = .whiteAccent
        commentsTextView.backgroundColor = .whiteAccent
        tipTotalTextField.backgroundColor = .whiteAccent
        totalTextField.backgroundColor = .whiteAccent
        tenPercentButton.backgroundColor = .tanAccent
        fifteenPercentButton.backgroundColor = .tanAccent
        twentyPercentButton.backgroundColor = .tanAccent
        
    }
    
    func findTip(checkTotal: Float) {
        if (tenPercentButton != nil) {
            let tip = checkTotal * 0.10
            let number: NSNumber = NSNumber(value: tip)
            let roundedNumber = round(Double(truncating: number) * 10)/10
            tipTotalTextField.text = "$\(roundedNumber)"
            totalTextField.text = "\(checkTotal + Float(roundedNumber))"
        } else if (fifteenPercentButton != nil) {
            let tip = checkTotal * 0.15
            let number: NSNumber = NSNumber(value: tip)
            let roundedNumber = round(Double(truncating: number) * 10)/10
            tipTotalTextField.text = "$\(roundedNumber)"
            totalTextField.text = "\(checkTotal + Float(roundedNumber))"
        } else if (twentyPercentButton != nil) {
            let tip = checkTotal * 0.15
            let number: NSNumber = NSNumber(value: tip)
            let roundedNumber = round(Double(truncating: number) * 10)/10
            tipTotalTextField.text = "$\(roundedNumber)"
            totalTextField.text = "\(checkTotal + Float(roundedNumber))"
        }
    }
    
} // END OF CLASS

extension String {
  var floatValue: Float {
    return (self as NSString).floatValue
  }
}
