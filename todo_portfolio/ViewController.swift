//
//  ViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 10. 29..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let _ = Auth.auth().currentUser {
            self.performSegue(withIdentifier: "LoginSegue", sender: self)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginbutton(_ sender: Any) {
        guard idField.text != nil else {return}
        guard pwField.text != nil else {return}
        
        Auth.auth().signIn(withEmail: idField.text!, password: pwField.text!, completion: {(user , error) in
            if user != nil{
                self.performSegue(withIdentifier: "LoginSegue", sender: self)
                print("Login success")
            }
            else{
                print("Logn Fail")
            }
        })
    }
    
    @IBAction func registerButton(_ sender: Any) {
        self.performSegue(withIdentifier: "RegisterSegue", sender: self)
    }
    

}

