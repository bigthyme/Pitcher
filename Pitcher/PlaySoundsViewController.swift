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
        var fileType = "mp3"
        var bundle = NSBundle.mainBundle()
        
        if var soundFile = NSURL(fileURLWithPath: bundle.pathForResource(fileName, ofType: fileType)!) {
            self.audioPlayer = AVAudioPlayer(contentsOfURL: soundFile, error: nil)
            self.audioPlayer.enableRate = true
        } else {
            println("Error: No file named " + fileName + " " + fileType + " in mainBundle")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func slowPlay(sender: UIButton) {
        self.audioPlayer.stop()
        self.audioPlayer.rate = 0.5
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
