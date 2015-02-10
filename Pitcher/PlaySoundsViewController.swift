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
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        var fastButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        var fileName = "life_is_like"
        var fileType = "mp3"
        var bundle = NSBundle.mainBundle()
        var rabbitImage = UIImage(named: "fast.png") as UIImage?
        // setup fast button programatically
        fastButton.frame = CGRect(x: 274, y: 114, width: 100, height: 100)
        fastButton.setBackgroundImage(rabbitImage, forState: .Normal)
        fastButton.setTranslatesAutoresizingMaskIntoConstraints(false)

        self.view.addSubview(fastButton)
        
        fastButton.addTarget(self, action:"fastPlay:", forControlEvents: UIControlEvents.TouchUpInside)
        
        //make dictionary for views
        let viewsDictionary = ["fastButton":fastButton]
        
        //sizing constraints
        
        //controls
//        let control_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[fastButton]-10-|", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        let control_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[fastButton]-50-|", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)

//        fastButton.addConstraints(control_constraint_H)
        fastButton.addConstraints(control_constraint_V)
        
        if var soundFile = NSURL(fileURLWithPath: bundle.pathForResource(fileName, ofType: fileType)!) {
            audioPlayer = AVAudioPlayer(contentsOfURL: soundFile, error: nil)
            audioPlayer.enableRate = true
        } else {
            println("Error: No file named " + fileName + " " + fileType + " in mainBundle")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // wraps similar functionality across all play methods
    func defaultSoundPlay(rate: Float32){
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = rate
        audioPlayer.play()
    }
    
    func fastPlay(sender: UIButton) {
        defaultSoundPlay(1.5)
    }
    
    @IBAction func slowPlay(sender: UIButton) {
        defaultSoundPlay(0.5)
    }
    
    @IBAction func stopPlay(sender: UIButton) {
        audioPlayer.stop()
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
