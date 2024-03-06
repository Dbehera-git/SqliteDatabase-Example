//
//  ViewController.swift
//  SqliteDatabase
//
//  Created by Deepak on 06/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func saveClicked(_ sender: UIButton) {
        let modelInfo = SignUpModel(name: txtName.text!, email: txtEmail.text!, phone: txtPhone.text!, address: txtAddress.text!)
        let isSave =  DatabaseManager.getInstance().saveData(modelInfo)
        print(isSave)
        
    }
}

