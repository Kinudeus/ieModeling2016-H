//
//  AddToDo.swift
//  ToDoList
//
//  Created by yogi yoshiya on 2016/12/08.
//  Copyright © 2016年 RyukyuUniversity. All rights reserved.
//

import UIKit

var todoItem = [String]()


class AddToDo: UIViewController {
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func AddItem(_ sender: Any) {
        todoItem.append(TextField.text!)
        UserDefaults.init().set(todoItem, forKey: "todoList")
        TextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        TextField.resignFirstResponder()
        return true
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}