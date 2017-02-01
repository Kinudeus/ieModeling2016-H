//
//  ToDoList.swift
//  Modeling
//
//  Created by yogi yoshiya on 2017/02/01.
//  Copyright © 2017年 RyukyuUniversity. All rights reserved.
//

import UIKit

class ToDoList: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
//    リストを表示するTableViewの追加
    @IBOutlet weak var todolistTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        配列の読み込み
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
//        let cellValue = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let cellValue = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath as IndexPath)
        cellValue.textLabel?.text = todoItem[indexPath.row]
        return cellValue
    }
    
    //リストの削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            todoItem.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            UserDefaults.init().set(todoItem, forKey: "todoList")
        }
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
