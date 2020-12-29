//
//  GardenViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

class GardenViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menug: UIButton!
    @IBOutlet weak var gardenbase: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func garden() -> GardenViewController
    {
        let storyboard = UIStoryboard(name: "Garden", bundle: nil)
        let GVC = storyboard.instantiateViewController(withIdentifier: "GardenVC") as! GardenViewController
        GVC.modalPresentationStyle = .fullScreen
        return GVC
    }
    
    
    @IBAction func menugclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
