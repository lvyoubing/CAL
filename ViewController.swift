//
//  ViewController.swift
//  CAL
//
//  Created by 吕欢达 on 16/3/28.
//  Copyright © 2016年 吕欢达. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var oneText: UITextField!
    @IBOutlet weak var opeRatorText: UITextField!
    @IBOutlet weak var twoText: UITextField!
    @IBOutlet weak var jieguo: UITextField!
    var a: String = ""
    var b: String = ""
    var c: String = ""
    
    
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
        if  value == "+"||value == "-"||value == "*"||value == "/"||value == "%"||value == "^"
        {
            c = value!
            opeRatorText.text = "\(c)"
            return
        }
        else if value == "©️"{

            a = ""
            b = ""
            c = ""
            oneText.text = "0"
            twoText.text = "0"
            opeRatorText.text = ""
            jieguo.text = "0"
            return
        }

        else if value == "="{
            var result = 0.0
            switch c {
            case "+":
                result = Double(a)! + Double(b)!
            case "-":
                result = Double(a)! - Double(b)!
            case "*":
                result = Double(a)! * Double(b)!
            case "/":
                result = Double(a)! / Double(b)!
            case "%":
                result = Double(a)! % Double(b)!
            case "^":
                result = Double(a)! * Double(a)!
            default :
                oneText.text = "出错请清零"
            }
            jieguo.text  = "\(result)"
            a = ""
            b = ""
            c = ""
            
            return
   
        }
        if c   == ""{
            
            a = a + value!
            oneText.text = "\(a)"
            return
        }
        else {
            
            b  = b + value!
           twoText.text = "\(b)"
            return
        }
    }
}

