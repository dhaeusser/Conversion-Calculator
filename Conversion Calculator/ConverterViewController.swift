//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Davis Haeusser on 10/27/19.
//  Copyright © 2019 Davis Haeusser. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIActionSheetDelegate {
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
       private let conversionArray: [(label: String,input: String,output: String)] = [("fahrenheit to celcius","°F","°C"),("celcius to fahrenheit","°C","°F"),("miles to kilometers","mi","km"),("kilometers to miles","km","mi")]
    @IBAction func converterControlleraction() {
    
    let converterController = UIAlertController(title: nil,message: "Choose Converter",preferredStyle: .actionSheet)

    let celciusAction = UIAlertAction(title: conversionArray[0].label,style: .default,handler: { (converterControlleraction)-> Void in
        self.inputDisplay.text = "98.6 " + self.conversionArray[0].input
        self.outputDisplay.text = "30 " + self.conversionArray[0].output
    })
    let fahrenheitAction = UIAlertAction(title: conversionArray[1].label, style: .default,handler: { (converterControlleraction)-> Void in
        self.inputDisplay.text = "98.6 " + self.conversionArray[1].input
        self.outputDisplay.text = "30 " + self.conversionArray[1].output
    })
    let kilometerAction = UIAlertAction(title: conversionArray[2].label,style: .default ,handler: { (converterControlleraction)-> Void in
        self.inputDisplay.text = "98.6 " + self.conversionArray[2].input
        self.outputDisplay.text = "30 " + self.conversionArray[2].output
    })
    let milesAction = UIAlertAction(title: conversionArray[3].label,style: .default,handler: { (converterControlleraction)-> Void in
        self.inputDisplay.text = "98.6 " + self.conversionArray[3].input
        self.outputDisplay.text = "30 " + self.conversionArray[3].output
    })
    converterController.addAction(celciusAction)
    converterController.addAction(fahrenheitAction)
    converterController.addAction(kilometerAction)
    converterController.addAction(milesAction)
        self.present(converterController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let conversionArray: [(label: String,input: String,output: String)] = [("fahrenheit to celcius","°F","°C"),("celcius to fahrenheit","°C","°F"),("miles to kilometers","mi","km"),("kilometers to miles","km","mi")]
        inputDisplay.text = "98.6 " + conversionArray[0].input
        outputDisplay.text = "30 " + conversionArray[0].output
         }

  
    
        // Do any additional setup after loading the view.
    
      

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
