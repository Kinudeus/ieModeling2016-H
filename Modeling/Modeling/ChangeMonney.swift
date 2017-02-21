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
        jpyFiled.text = jpyFiled.text?.applyingTransform(.fullwidthToHalfwidth, reverse: false)
        usdFiled.text = usdFiled.text?.applyingTransform(.fullwidthToHalfwidth, reverse: false)
        if isOnlyNumber(jpyFiled.text!) {
            result = Double(jpyFiled.text!)!/usd2Jpy
            usdFiled.text = String(Int(result))
        } else if isOnlyNumber(usdFiled.text!) {
            result = Double(usdFiled.text!)! * usd2Jpy
            jpyFiled.text = String(Int(result))
        } else {
            jpyFiled.text = ""
            usdFiled.text = ""
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        jpyFiled.text = ""
        usdFiled.text = ""
    }
    
    func isOnlyNumber(_ str:String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES '\\\\d+'")
        return predicate.evaluate(with: str)
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
