//
//  AddToDo.swift
//  Modeling
//
//  Created by yogi yoshiya on 2017/02/01.
//  Copyright © 2017年 RyukyuUniversity. All rights reserved.
//

import UIKit


var todoItem: [String] = []

class AddToDo: UIViewController {
    
//    入力するTextFieldの追加
    @IBOutlet weak var AddToDoText: UITextField!
    
//    ボタンを押した時の処理
    @IBAction func AddItem(_ sender: Any) {
        if AddToDoText.text != "" {
            todoItem.append(AddToDoText.text!)
            UserDefaults.init().set(todoItem, forKey: "todoList")
            AddToDoText.text = ""
        }
    }
    
//    入力画面以外のところに触れると入力画面がなくなる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        AddToDoText.resignFirstResponder()
        return true
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
