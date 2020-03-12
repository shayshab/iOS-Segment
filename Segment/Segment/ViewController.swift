//
//  ViewController.swift
//  Segment
//
//  Created by DhakaLive on 3/2/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let maxtime = 10.0
    var mintime = 0.0
    
    @IBOutlet weak var steeperlb: UILabel!
    
    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    
    

    
    @IBOutlet weak var prog: UIProgressView!
    
    
    @IBOutlet weak var ouputprog: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SegmentOutlet.layer.cornerRadius = 40
    }
    
    @IBAction func SegmentAction(_ sender: Any) {
        
        switch SegmentOutlet.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .red
        case 1:
        view.backgroundColor = .blue
        case 2:
            view.backgroundColor = .black
        case 3:
            view.backgroundColor = .green
      
        default:
            print("stop")
        }
    }
    
    @IBAction func steeper(_ sender: UIStepper) {
        steeperlb.text = String(sender.value)
           
       }
    
    
    
    @IBAction func btprog(_ sender: Any) {
        updateprog()
        
    }
    
    @objc func updateprog(){
        mintime = mintime+1
        prog.progress = Float(mintime/maxtime)
        ouputprog.text = "\(mintime)%"
        if mintime<maxtime{
            perform(#selector(updateprog),with: nil,afterDelay: 1)
        }
        else{
            print("stop")
            
            performSegue(withIdentifier: "page2", sender: self)
            mintime = 0
        }
    }
    
    

    
    
}

