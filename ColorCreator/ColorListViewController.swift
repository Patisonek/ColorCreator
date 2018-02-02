//
//  ColorListViewController.swift
//  ColorCreator
//
//  Created by Admin on 04/12/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

class ColorListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!
    
    var colors = [UIColor]()
    var colorNames = [String]()
    var colorNumbers = [Int]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        loadColors()
    }
    
    func loadColors(){
        
        colors.removeAll()
        colorNames.removeAll()
        colorNumbers.removeAll()
        
        if UserDefaults.standard.object(forKey: LAST_COLOR_NUMBER_KEY) != nil {
            
            let lastColorNumber = UserDefaults.standard.integer(forKey: LAST_COLOR_NUMBER_KEY)
            
            for i in 1...lastColorNumber {
                if let color = UserDefaults.standard.colorForKey(key: "Color_\(i)"){
                    let colorName = UserDefaults.standard.string(forKey: "Color_\(i)_Name")!
                    
                    colors.append(color)
                    colorNames.append(colorName)
                    colorNumbers.append(i)

                }
            }
        }
        //odswiezenie widoku tabeli
        table.reloadData()
        
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ColorCellTableViewCell
        
        cell.nameLabel.text = colorNames[colors.count - 1 - indexPath.row]
        cell.backgroundColor = colors[colors.count - 1 - indexPath.row]
        cell.valuesLabel.text = colors[colors.count - 1 - indexPath.row].rgbString()
        
        return cell
        
        
    }
    

    
    
    
    
    
    
   

}
