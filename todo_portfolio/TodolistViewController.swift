//
//  TodolistViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 11. 7..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit


var todoC : [String] = []
var todoT : [String] = []
class TodolistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //TableView
    @IBOutlet weak var todoTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.todoTableview.dataSource = self
        self.todoTableview.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.todoTableview.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoT.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = todoC[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        self.performSegue(withIdentifier: "TableSegue", sender: self)
    }
    // -----------------end------------------------

    @IBAction func writeButton(_ sender: Any) {
        self.performSegue(withIdentifier: "TodoSegue", sender: self)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
