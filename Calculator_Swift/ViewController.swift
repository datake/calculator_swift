//
//  ViewController.swift
//  Calculator_Swift
//
//  Created by TakedaHajime on 2015/03/22.
//  Copyright (c) 2015年 TakedaHajime. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Label:UILabel!
    
    var number1:Int = 0
    var number2:Int = 0
    var operation:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //TODO 今は３と４のボタンしか機能してない。
    //
    @IBAction func select3(){
        number1 = number1*10+3
        Label.text="\(number1)"
    }
    @IBAction func select4(){
        number1 = number1*10+4
        Label.text="\(number1)"
    }
    @IBAction func plus(){
        Label.text="\(number1) +"
        operation=1
        number2=number1
        number1=0
    }
    
    @IBAction func minus(){
        Label.text="\(number1) -"
        operation=2
        number2=number1
        number1=0
    }
    @IBAction func equal(){
        if operation==1{
            Label.text="\(number1 + number2)"
        }
        if operation==2{
            Label.text="\( number2-number1 )"
        }
        
    }
    @IBAction func reset(){
       number1=0
       number2=0
       Label.text="\(number1)"
        
    }


}

