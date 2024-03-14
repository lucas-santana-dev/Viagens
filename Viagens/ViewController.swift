//
//  ViewController.swift
//  Viagens
//
//  Created by Lucas Santana on 14/03/24.
//

import UIKit

class ViewController: UIViewController {
    //Referenciação da table view
    @IBOutlet weak var viagensTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource=self 
    }
}

//Extenção do protocolo UITabViewControler
extension ViewController: UITableViewDataSource{
    
    //Definição da quantidade de linhas que existirá
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //Definição do conteúdo das linhas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(
            style: .default,
            reuseIdentifier: nil
        )
     
        cell.textLabel?.text = "Viagem \(indexPath.row)"
       
        return cell
    }
}

