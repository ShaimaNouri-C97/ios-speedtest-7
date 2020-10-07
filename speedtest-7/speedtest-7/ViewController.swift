//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        let name = nameField.text
        self.name = name
        if nameField.text!.count >= 2 {
            performSegue(withIdentifier: "details", sender: name)
        }
        else{
            print ("WHAT'S YOUR NAME")
        }
    }
    // Hint: `performSegue` is the way
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = sender as! String
        let detailsVC = segue.destination as! DetailVC
        detailsVC.name = self.name
    }

}

