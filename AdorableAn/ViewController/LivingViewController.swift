//
//  LivingViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class LivingViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menul: UIButton!
    @IBOutlet weak var livingbase: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func living() -> LivingViewController
    {
        let storyboard = UIStoryboard(name: "Living", bundle: nil)
        let LVVC = storyboard.instantiateViewController(withIdentifier: "LivingVC") as! LivingViewController
        LVVC.modalPresentationStyle = .fullScreen
        return LVVC
    }
    
    
    @IBAction func menulclick()
    {
        dismiss(animated: true, completion: nil)
    }
    
    
}
