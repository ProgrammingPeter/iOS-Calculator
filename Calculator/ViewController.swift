//
//  ViewController.swift
//  Calculator
//
//  Created by Peter Kamaris on 4/27/17.
//  Copyright © 2017 Peter Kamaris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!

    private var isInMiddleOfTyping = false

    private let calculator = Calculator()
    
    var displayTitle: String {
        get {
            return display!.text!
        }
        set(value) {
            display!.text = value
        }
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        if isInMiddleOfTyping {
            displayTitle = displayTitle + sender.currentTitle!
        } else {
            displayTitle = sender.currentTitle!
            isInMiddleOfTyping = true
        }
    }

    @IBAction func clearDisplay(_ sender: UIButton) {
        displayTitle = String(0)
        isInMiddleOfTyping = false
    }
    @IBAction func performMathematicalOperation(_ sender: UIButton) {
        
    }
}

