//
//  TodolistViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 11. 7..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit
import Firebase

class TodolistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //TableView
    var todoC : [String] = []
    var todoT : [String] = []
    let cellIdentifer : String = "cell"
    
    var ref:DatabaseReference!
    
    @IBOutlet weak var todoTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.todoTableview.reloadData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.todoTableview.dataSource = self
        self.todoTableview.delegate = self
        ref = Database.database().reference()
        
        ref.observeSingleEvent(of: .value, with: {(snapshot) in
            let values = snapshot.value as? [String : AnyObject]
            self.todoC = values? ["Content"] as! [String]
            self.todoT = values? ["Title"] as! [String]
        })
        
        self.todoTableview.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoT.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifer, for: indexPath)
        
        cell.textLabel?.text = self.todoT[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        TodolistData.shared.content = self.todoC
        TodolistData.shared.title = self.todoT
        TodolistData.shared.index = indexPath
        self.performSegue(withIdentifier: "TableSegue", sender: self)
    }
    // -----------------end------------------------

    @IBAction func writeButton(_ sender: Any) {
        TodolistData.shared.content = self.todoC
        TodolistData.shared.title = self.todoT
        
        self.performSegue(withIdentifier: "TodoSegue", sender: self)
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
