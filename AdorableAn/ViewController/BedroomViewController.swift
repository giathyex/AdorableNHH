//
//  BedroomViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class BedroomViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menub: UIButton!
    @IBOutlet weak var bedroombase: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func bedroom() -> BedroomViewController
    {
        let storyboard = UIStoryboard(name: "Bedroom", bundle: nil)
        let BRVC = storyboard.instantiateViewController(withIdentifier: "BedroomVC") as! BedroomViewController
        BRVC.modalPresentationStyle = .fullScreen
        return BRVC
    }
    
    
    @IBAction func menubclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
