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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(sender: UIButton) {
        // TODO: use unary operator here for clean up
        if (recordingLabel.hidden == false) {
            recordingLabel.hidden = true;
        } else {
            recordingLabel.text = "Recording...Click to stop";
            recordingLabel.hidden = false;
        }
    }
}

