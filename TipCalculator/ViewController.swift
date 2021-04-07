//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jeevan reddy on 06/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTxt: UITextField!
    @IBOutlet weak var tipPercentTxt: UITextField!
    @IBOutlet weak var calculateTipBtn: UIButton!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var billAmountLbl: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        let billAmount:Double=Double(billAmountTxt.text!)!
        let tipAmount:Double=(Double(tipPercentTxt.text!)! / 100 ) * billAmount
        tipAmountLbl.text="\(tipAmount)"
        tipAmountLbl.text = String(format: "$ %.02f", tipAmount)
        billAmountLbl.text=String(format:"$ %.02f",billAmount + tipAmount)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

