//
//  SecondViewController.swift
//  Segment
//
//  Created by DhakaLive on 3/2/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit
var country=["Bangladesh","Pakistan","India","nepal"]
class SecondViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var lb: UILabel!
    
    @IBOutlet weak var tv: UITextField!
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    
    @IBOutlet weak var pickerlb: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return pickerlb.text=country[row]
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func bt(_ sender: Any) {
        
        let toastMessage = UILabel()
        toastMessage.frame = CGRect(x: 100, y: 100, width: 200, height: 60)
        
        toastMessage.text = "I a"
        toastMessage.textAlignment = .center
        toastMessage.backgroundColor = UIColor.brown
        toastMessage.textColor
            = UIColor.white
        self.view.addSubview(toastMessage)
        
        UIView.animate(withDuration: 2.0, delay: 1.0, options: .curveEaseOut, animations: {
            
            toastMessage.alpha = 0.0
            
        }) {(iscompleted) in
            toastMessage.removeFromSuperview()
        }
        
        
        
        if tv.text != ""{
            
            performSegue(withIdentifier: "third", sender: self)
        }
        else{
            print("empty")
        }
        
        lb.text = tv.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?){
        
        
        let obj = segue.destination as! third
        obj.str = tv.text!
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
