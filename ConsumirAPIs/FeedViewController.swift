//
//  ViewController.swift
//  ConsumirAPIs
//
//  Created by Francisco Soares Neto on 20/08/20.
//  Copyright © 2020 Francisco Soares Neto. All rights reserved.
//

import UIKit

class FilmsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! FilmTableViewCell
        
        // configura a célula
        
        
        
        // ...
        
        return cell
    }
}

