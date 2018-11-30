//
//  RegisterViewController.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 10. 29..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var repwField: UITextField!
    @IBOutlet weak var naField: UITextField!
    @IBOutlet weak var emField: UITextField!
    @IBOutlet weak var phField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func returnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func registerButton(_ sender: Any) {
        guard idField.text != nil else {return}
        guard pwField.text != nil else {return}
        guard repwField.text != nil else {return}
        guard emField.text != nil else {return}
        guard phField.text != nil else {return}
        
        Auth.auth().createUser(withEmail: idField.text!, password: pwField.text!, completion: {(user, error) in
            if user != nil {
                print("Login success")
                self.dismiss(animated: true, completion: nil)
            }
            else {
                print("\(String(describing: error))")
            }
        })
        
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
