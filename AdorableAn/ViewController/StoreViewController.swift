//
//  StoreViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

class StoreViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menustr: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func store() -> StoreViewController
    {
        let storyboard = UIStoryboard(name: "Store", bundle: nil)
        let SVC = storyboard.instantiateViewController(withIdentifier: "StoreVC") as! StoreViewController
        SVC.modalPresentationStyle = .fullScreen
        return SVC
    }
    
    
    @IBAction func menustrclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
