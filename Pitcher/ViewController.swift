//
//  ViewController.swift
//  Pitcher
//
//  Created by Tony Singhavong on 1/12/15.
//  Copyright (c) 2015 bigthyme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false;
        recordingLabel.hidden = false;
        stopButton.hidden = false;
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        // here is an example of an action that will change users
        Appboy.sharedInstance().changeUser("8741039")
        
        recordingLabel.hidden = true;
        recordButton.enabled = true;
    }
}

