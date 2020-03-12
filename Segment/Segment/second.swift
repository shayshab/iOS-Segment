//
//  second.swift
//  Segment
//
//  Created by DhakaLive on 3/2/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class second: UIViewController {
    
    @IBOutlet weak var lb: UILabel!
    
    @IBOutlet weak var tv: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bt(_ sender: Any) {
        
        lb.text=tv.text
    }
    

}
