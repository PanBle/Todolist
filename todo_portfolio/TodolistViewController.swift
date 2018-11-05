//
//  TodolistViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 11. 2..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit

class TodolistViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
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
