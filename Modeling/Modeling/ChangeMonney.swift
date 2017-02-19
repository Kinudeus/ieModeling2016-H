//
//  changeMonney.swift
//  Modeling
//
//  Created by Masaaki Matsunaga on 2017/02/14.
//  Copyright © 2017年 RyukyuUniversity. All rights reserved.
//

import UIKit

class ChangeMonney: UIViewController{
   
    //現在の為替レートを一時的に設定
    let usd2Jpy:Double = 106.0
    
    @IBAction func calcButton(_ sender: AnyObject) {
        var result:Double = 0
        result = Double(inputFiled.text!)!/usd2Jpy
        resultFiled.text = String(Int(result))
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        //Do any additional setup after loading the view,from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var inputFiled: UITextField!
    
    @IBOutlet weak var resultFiled: UITextField!

    
}

