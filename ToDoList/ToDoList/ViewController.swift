//
//  ViewController.swift
//  ToDoList
//
//  Created by yogi yoshiya on 2016/12/08.
//  Copyright © 2016年 RyukyuUniversity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var todolistTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if UserDefaults.init().object(forKey: "todoList") != nil {
            todoItem = UserDefaults.init().object(forKey: "todoList") as! [String]
        }
    }
    
    //配列のカウント
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItem.count
    }
    
    //リストに表示
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellValue = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
//        let cellValue = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        cellValue.textLabel?.text = todoItem[indexPath.row]
        return cellValue
    }
    
    
    private func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            todoItem.remove(at: indexPath.row)
            UserDefaults.init().set(todoItem, forKey: "todoList")
            todolistTable.reloadData()
        }
    }
    
    //リストの削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todoItem.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
//    private func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            todoItem.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//    }

    
//    override func viewDidAppear(_ animated: Bool) {
//        todolistTable.reloadData()
//    }
    

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
}
