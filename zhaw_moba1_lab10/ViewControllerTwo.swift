//
//  ViewControllerTwo.swift
//  zhaw_moba1_lab10
//
//  Created by José Miguel Rota on 22.11.16.
//  Copyright © 2016 José Miguel Rota. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerTwo : UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var labelValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if labelValue != nil {
            label.text = labelValue
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
