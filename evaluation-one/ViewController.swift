//
//  ViewController.swift
//  evaluation-one
//
//  Created by Enrique Villón on 14/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var names = ["Enrique","Gracia"]
    var nameSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "celdaTabla", for: indexPath)
        cel.textLabel?.text = names[indexPath.row]
        return cel
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nameSelected = names[indexPath.row]
        performSegue(withIdentifier: "navegar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let final = segue.destination as? FinalViewController
        final?.nombre = nameSelected
    }
}

