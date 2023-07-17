//
//  FinalViewController.swift
//  evaluation-one
//
//  Created by Enrique Villón on 14/07/23.
//

import UIKit

class FinalViewController: UIViewController {
    var nombre = ""
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("entrando", nombre)
        name.text = nombre
        // Do any additional setup after loading the view.
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
