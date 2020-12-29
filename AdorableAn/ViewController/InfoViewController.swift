//
//  InfoViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

class InfoViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    var playervol : AVAudioPlayer?
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
      
    @IBOutlet weak var menuinf: UIButton!
    @IBOutlet weak var slidevol: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let vcv = UserDefaults.standard.object(forKey: "vlume") as? Float
        {
            slidevol.value = vcv
        }
    }
    
    func info() -> InfoViewController
    {
        let storyboard = UIStoryboard(name: "Info", bundle: nil)
        let INFVC = storyboard.instantiateViewController(withIdentifier: "InfoVC") as! InfoViewController
        INFVC.modalPresentationStyle = .fullScreen
        return INFVC
    }
    
    @IBAction func slidevol(_ sender: UISlider)
    {
        let selectedValue = Float(sender.value)
        playervol?.volume = selectedValue
        UserDefaults.standard.set(selectedValue, forKey: "vlume")
    }
    
    @IBAction func menuifclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
