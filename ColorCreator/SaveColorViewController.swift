//
//  SaveColorViewController.swift
//  ColorCreator
//
//  Created by Admin on 04/12/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

class SaveColorViewController: UIViewController, UITextFieldDelegate {
    
    var colorToSave : UIColor?
    
   
    @IBOutlet weak var colorNameText: UITextField!
    @IBAction func saveColor(_ sender: Any) {
        self.colorNameText.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = colorToSave {
            view.backgroundColor = color
        }
    
    }


}
