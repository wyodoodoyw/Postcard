//
//  ViewController.swift
//  Postcard
//
//  Created by Matthew Wood on 2015-04-18.
//  Copyright (c) 2015 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // update message label
        messageLabel.hidden = false                             // un-hides the label
        messageLabel.text = enterMessageTextField.text          // sets text in label to input text
        messageLabel.textColor = UIColor.redColor()             // changes label text colour to red
        
        // update labels
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        // update message fields
        enterMessageTextField.text = ""                         // clears text field upon click
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()            // hides keyboard
        
        // button must also be set up as an IBOutlet for these functions to work
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

