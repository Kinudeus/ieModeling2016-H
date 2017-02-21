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
    
    @IBAction func editingButton(_ sender: Any) {
        if todolistTable.isEditing == false {
            todolistTable.isEditing = true
        }   else{
            todolistTable.isEditing = false
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        配列の読み込み
        if UserDefaults.init().object(forKey: "todoList") != nil {
            todoItem = UserDefaults.init().object(forKey: "todoList") as! [String]
        }
        
//        todolistTable.isEditing = true
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
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //並び替え時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath){
        
//        //移動されたデータを取得する。
//        let moveData = todolistTable.cellForRow(at: sourceIndexPath as IndexPath)?.textLabel!.text
//        
//        //元の位置のデータを配列から削除する。
//        todoItem.remove(at: sourceIndexPath.row)
//        
//        //移動先の位置にデータを配列に挿入する。
//        todoItem.insert(moveData!, at:destinationIndexPath.row)
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
