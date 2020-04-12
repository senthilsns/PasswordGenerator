//
//  ViewController.swift
//  PasswordGenerator
//
//  Created by SENTHILKUMAR on 12/04/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstTxtFld: UITextField!
    @IBOutlet var secondTxtFld: UITextField!
    @IBOutlet var DisplayLbl: UILabel!
    
    var commonArray :[String] = []
    var commonString : String = ""

    
    func passwordGenerator (a: String, b:String)-> String{
        
        let firstStrArray = Array(a)
        let secondStrArray = Array(b)

        let sequence = zip(firstStrArray, secondStrArray)
        
        for (el1,el2) in sequence{
            
            commonArray.append("\(el1)\(el2)")
            
        }
        
       commonString = commonArray.joined(separator: ",")
       commonString = commonString.replacingOccurrences(of: ",", with: "")
       return commonString
        
    }
    
    @IBAction func Generate_TouchUpInside(_ sender: Any) {
        
        
        
        DisplayLbl.text = passwordGenerator(a: firstTxtFld.text ?? "123", b: secondTxtFld.text ?? "345")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

