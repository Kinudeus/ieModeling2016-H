//
//  changeMonney.swift
//  Modeling
//
//  Created by Masaaki Matsunaga on 2017/02/14.
//  Copyright © 2017年 RyukyuUniversity. All rights reserved.
//

import UIKit

class ChangeMonney: UIViewController {
    
    let usd2Jpy:Double = 106.0
    
    @IBOutlet weak var jpyFiled: UITextField!
    @IBOutlet weak var usdFiled: UITextField!
    
    
    @IBAction func calcButton(_ sender: Any) {
        var result:Double = 0
        result = Double(jpyFiled.text!)!/usd2Jpy
        usdFiled.text = String(Int(result))
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
