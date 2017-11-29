//
//  ViewController.swift
//  ColorCreator
//
//  Created by Admin on 20/11/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var previewContainer: UIView!
    
    @IBAction func actionRandomButton(_ sender: Any) {
        
        previewContainer.backgroundColor = UIColor.randomColor()
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

