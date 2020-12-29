//
//  GarageViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class GarageViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menugr: UIButton!
    @IBOutlet weak var garagebase: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func garage() -> GarageViewController
    {
        let storyboard = UIStoryboard(name: "Garage", bundle: nil)
        let GRVC = storyboard.instantiateViewController(withIdentifier: "GarageVC") as! GarageViewController
        GRVC.modalPresentationStyle = .fullScreen
        return GRVC
    }
    
    
    @IBAction func menugrclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
