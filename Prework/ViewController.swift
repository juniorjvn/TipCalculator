//
//  ViewController.swift
//  Prework
//
//  Created by Junior Norabuena on 1/14/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var peopleSlider: UISlider!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var amountPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let bill = Double(billAmountTextField.text!) ?? 0
        //let tipPercentanges = [0.15, 0.18, 0.2]
        //let tipPercentage = tipPercentanges[tipControl.selectedSegmentIndex]
        tipPercentageLabel.text = String(Int(tipSlider.value)) + "%"
        let tipPercentage = Int(tipSlider.value)
        let tip =  bill * Double(tipPercentage) / 100
        let total = bill + tip
        let totalPeople = Int(peopleSlider.value)
        let amountPerPerson = total / Double(totalPeople)
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        peopleLabel.text = String(Int(peopleSlider.value))
        tipPercentageLabel.text = String(tipPercentage) + "%"
        amountPerPersonLabel.text = String(format: "$%.2f", amountPerPerson)
    }
    
    @IBAction func people(_ sender: AnyObject) {
        calculateTip(self)
    }
    @IBAction func amountChange(_ sender: Any) {
        calculateTip(self)
    }
    
}


