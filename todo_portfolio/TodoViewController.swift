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
    
    var saveContent:[String] = []
    var saveTitle:[String] = []
    var ref:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveTitle = TodolistData.shared.title!
        saveContent = TodolistData.shared.content!
    }
    @IBAction func sendButton(_ sender: Any) {
        guard titleField.text != nil else {return}
        guard contentField.text != nil else {return}
        
        saveTitle.append(titleField.text!)
        saveContent.append(contentField.text!)
        
        self.ref = Database.database().reference()
        
        let titleref = self.ref.child("Title")
        let contentref = self.ref.child("Content")
        
        titleref.setValue(saveTitle)
        contentref.setValue(saveContent)
        
        TodolistData.shared.content = saveContent
        TodolistData.shared.title = saveTitle
        
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
