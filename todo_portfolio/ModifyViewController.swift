//
//  ModifyViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 11. 2..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit

class ModifyViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.titleLabel.text = TodolistData.shared.title
        self.contentLabel.text = TodolistData.shared.content
    }
   
    @IBAction func modifyButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ModifySegue", sender: self)
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
