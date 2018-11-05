//
//  ViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 10. 29..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginbutton(_ sender: Any) {
    }
    
    @IBAction func registerButton(_ sender: Any) {
        self.performSegue(withIdentifier: "RegisterSegue", sender: self)
    }
    

}

