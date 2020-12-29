//
//  WardrobeViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

class WardrobeViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menuwa: UIButton!
    @IBOutlet weak var wardrobebase: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func wardrobe() -> WardrobeViewController
    {
        let storyboard = UIStoryboard(name: "Wardrobe", bundle: nil)
        let WAVC = storyboard.instantiateViewController(withIdentifier: "WardrobeVC") as! WardrobeViewController
        WAVC.modalPresentationStyle = .fullScreen
        return WAVC
    }
    
    
    @IBAction func menuwaclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
