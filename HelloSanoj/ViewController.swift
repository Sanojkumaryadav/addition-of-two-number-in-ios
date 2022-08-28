//
//  ViewController.swift
//  HelloSanoj
//
//  Created by ekincare on 27/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTxt1: UITextField!
    
    @IBOutlet weak var myTxt2: UITextField!
    
    @IBOutlet weak var myLbl1: UILabel!
    
    @IBAction func btnClick(_ sender: Any) {
        myLbl1.isHidden = false;
        let a = Int(myTxt1.text!);
        let b = Int(myTxt2.text!);
        let c = a! + b!;
        
        myLbl1.text = String(c);
        print("Sum is \(c)")
        
        if c == 10 {
            self.view.backgroundColor = UIColor.gray;
            
            let simpleAlert = UIAlertController(title: "Hello World", message: "Your answer is \(c)", preferredStyle: .actionSheet)
            
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil);
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil);
            let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: nil);

            
            simpleAlert.addAction(okAction)
            simpleAlert.addAction(cancelAction);
            simpleAlert.addAction(deleteAction);

            self.present(simpleAlert, animated: true, completion: nil);
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLbl1.isHidden = true;
        // Do any additional setup after loading the view.
        print("Loaded");
    }


}

