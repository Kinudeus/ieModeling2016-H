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
    
    @IBAction func testedit(_ sender: UIBarButtonItem) {
        func setEditing(editing: Bool, animated: Bool) {
            super.setEditing(editing, animated: animated)
            todolistTable.isEditing = editing
        }
    }
    
   	
    @IBAction func testbtn(_ sender: Any) {
        
        
//        if(todolistTable.isEditing == true) {
//            todolistTable.isEditing = false
//        } else {
//            todolistTable.isEditing = true
//        }
//        
        
    }
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        // TableViewを編集可能にする
        todolistTable.setEditing(editing, animated: true)
        
        // 編集中のときのみaddButtonをナビゲーションバーの左に表示する
        if editing {
            print("編集中")
//            let addButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(ViewController.addCell(sender:)))
//            self.navigationItem.setLeftBarButton(addButton, animated: true)
        } else {
            print("通常モード")
            self.navigationItem.setLeftBarButton(nil, animated: true)
        }
    }
    
        
//        if todolistTable.isEditing == true {
//            todolistTable.isEditing = false
//        }else{
//            todolistTable.isEditing = true
//        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if UserDefaults.init().object(forKey: "todoList") != nil {
            todoItem = UserDefaults.init().object(forKey: "todoList") as! [String]
        }
        
//        self.navigationItem.leftBarButtonItem = self.editButtonItem
//        self.navigationItem.title = "テスト"
        
        
    }
    
    //配列のカウント
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItem.count
    }
    
    //リストに表示
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellValue = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let cellValue = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        cellValue.textLabel?.text = todoItem[indexPath.row]
        return cellValue
    }
    
    //リストの削除
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
//        if editingStyle == UITableViewCellEditingStyle.delete{
//            todoItem.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//            UserDefaults.init().set(todoItem, forKey: "todoList")
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
