//
//  ViewController.swift
//  zhaw_moba1_lab10
//
//  Created by José Miguel Rota on 22.11.16.
//  Copyright © 2016 José Miguel Rota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var lblThree: UILabel!
    
    @IBOutlet weak var inputOne: UITextField!
    @IBOutlet weak var inputTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChangeLabel(_ sender: Any) {
        if let text = inputOne.text {
            lblOne.text = text
            lblTwo.text = text
            lblThree.text = text
        }
    }

    @IBAction func onShowValue(_ sender: Any) {
        
        if let text = inputTwo.text {
            if let viewCtrl = self.storyboard?.instantiateViewController(withIdentifier: "viewControllerTwo") as? ViewControllerTwo {
                viewCtrl.labelValue = text
                self.present(viewCtrl, animated: true, completion: nil)
            }
        }

    }
}

