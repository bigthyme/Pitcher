//
//  PlaySoundsViewController.swift
//  Pitcher
//
//  Created by Tony Singhavong on 1/13/15.
//  Copyright (c) 2015 bigthyme. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    // instantiate audio player class
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        var fileName = "life_is_like"
        var bundle = NSBundle.mainBundle()
        
        if var soundFile = NSURL(fileURLWithPath: bundle.pathForResource(fileName, ofType: "mp3")!) {
            self.audioPlayer = AVAudioPlayer(contentsOfURL: soundFile, error: nil)
        } else {
            println("no file named " + fileName + " found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func slowPlay(sender: UIButton) {
        self.audioPlayer.play()
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
