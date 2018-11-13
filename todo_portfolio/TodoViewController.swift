//
//  TodoViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 11. 2..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit
import Firebase

class TodoViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var contentField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func sendButton(_ sender: Any) {
        todoT.append(self.titleField.text!)
        todoC.append(self.contentField.text!)
        
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func returnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
