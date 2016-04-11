//
//  ViewController.swift
//  CAL
//
//  Created by 吕欢达 on 16/3/28.
//  Copyright © 2016年 吕欢达. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultText: UITextField!
    @IBOutlet weak var opeRatorText: UITextField!
    @IBOutlet weak var jieguo: UITextField!
    @IBOutlet weak var reText: UITextField!
    var opeRand1: String = ""
    var opeRand2: String = ""
    var opeRator: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Clicked(sender: UIButton) {
        var value = sender.currentTitle
        let bool_value = true
        if  value == "+"||value == "-"||value == "*"||value == "/"||value == "%"||value == "^"
        {
            opeRator = value!
            opeRatorText.text = "\(opeRator)"
            return
        }
        else if value == "©️"{
            value = "0"
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            resultText.text = "0"
            reText.text = "0"
            opeRatorText.text = ""
            jieguo.text = "0"
            return
        }
        else if value == "➕／➖"{
            if  bool_value ==  true{
                bool_value == false
            }
            else{
                bool_value == true
            }
        }
        else if value == "="{
            var result = 1
            switch opeRator {
            case "+":
                result = Int(opeRand1)! + Int(opeRand2)!
            case "-":
                result = Int(opeRand1)! - Int(opeRand2)!
            case "*":
                result = Int(opeRand1)! * Int(opeRand2)!
            case "/":
                result = Int(opeRand1)! / Int(opeRand2)!
            case "%":
                result = Int(opeRand1)! /      100
            case "^":
                result = Int(opeRand1)! * Int(opeRand1)!
            default :
                resultText.text = "出错请清零"
            }
            jieguo.text  = "\(result)"
//            opeRatorText.text = ""
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            
            return
   
        }
        if opeRator   == ""{
            
            opeRand1  = opeRand1 + value!
            resultText.text = "\(opeRand1)"
            return
        }
        else {
            
            opeRand2  = opeRand2 + value!
            reText.text = "\(opeRand2)"
            return
        }
    }
}

