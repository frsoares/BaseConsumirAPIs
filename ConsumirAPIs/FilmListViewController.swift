//
//  ViewController.swift
//  ConsumirAPIs
//
//  Created by Francisco Soares Neto on 20/08/20.
//  Copyright © 2020 Francisco Soares Neto. All rights reserved.
//

import UIKit

class FilmListViewController: UITableViewController {

    var films: [Film] = [Film()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.load()
    }

    
    /// Carrega os dados do webservice
    func load() {
        // TODO: Carregar dados do webservice
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Studio Ghibli Films"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! FilmTableViewCell
        
        // configura a célula
        // TODO: Configurar a célula
        // ...
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFilm", case let nextVC = segue.destination as? FilmViewController {
            nextVC?.film = films[tableView.indexPathForSelectedRow!.row]
        }
    }
}

