//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jalen Springfield on 9/30/18.
//  Copyright © 2018 Jalen Springfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    @IBAction func didTapButton(_ sender: UIButton) {
        textLabel.textColor = UIColor.green
    }
    @IBAction func didTapGoodbye(_ sender: UIButton) {
        textLabel.text = "Goodbye 👋"
    }
    @IBAction func didTapViewButton(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    @IBAction func didTapTextButton(_ sender: UIButton) {

        if(textField.text == "")
        {
            textLabel.text = "Hello from Jalen!"
        }
        else
        {
        textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    @IBAction func onResetGesture(_ sender: UITapGestureRecognizer) {
        textLabel.text = "Hello from Jalen!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

