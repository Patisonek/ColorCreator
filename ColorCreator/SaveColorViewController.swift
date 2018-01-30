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
        
        if(colorNameText.text == nil || colorNameText.text!.isEmpty){
            let message = "Nie wpisales zadnego koloru"
            let alert = UIAlertController(title: "Wpisz nazwę", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) ->Void in
            }))
            
            self.present(alert, animated: true, completion: nil)
            
        }else{
            
            
            
            
        }
        
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
