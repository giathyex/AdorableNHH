//
//  MenuViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/28/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIScrollViewDelegate
{
    override var prefersStatusBarHidden: Bool
    {
      return true
    }
    
    var player : AVAudioPlayer?
    {
        get
        {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            return appDelegate.playerx
        }
        set
        {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.playerx = newValue
        }
    }
    
    let banner = MenuViewController()
    let lovebanner = LoveViewController()
    
    @IBOutlet weak var menu: UIButton!
    @IBOutlet weak var love: UIButton!
    @IBOutlet weak var basehome: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBAction func bannerclick()
    {
        let bannerx = banner.menu()
        present(bannerx, animated: true)
    }
    
    @IBAction func loveclick()
    {
        let lovex = lovebanner.lovev()
        present(lovex, animated: true)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        do
        {
            let audiopath1 = Bundle.main.path(forResource: "background1", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath1!) as URL)
        }
        catch
        {
        }
        let session = AVAudioSession.sharedInstance()
        do
        {
            try session.setCategory(AVAudioSession.Category.playback)
        }
        catch
        {
        }
        player?.play()
        player?.numberOfLoops = -1
        
        if let v = UserDefaults.standard.object(forKey: "vlume") as? Float
        {
            player?.volume = v
        }
    }
    
}

