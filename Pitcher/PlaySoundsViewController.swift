//
//  PlaySoundsViewController.swift
//  Pitcher
//
//  Created by Tony Singhavong on 1/13/15.
//  Copyright (c) 2015 bigthyme. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func slowPlay(sender: UIButton) {
        println("SLOWLY PLAYING...");
    }
    
    @IBAction func fastPlay(sender: UIButton) {
        println("FASTLY PLAYING...");
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
