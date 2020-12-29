//
//  KitchenViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class KitchenViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menuk: UIButton!
    @IBOutlet weak var kitchenbase: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func kitchen() -> KitchenViewController
    {
        let storyboard = UIStoryboard(name: "Kitchen", bundle: nil)
        let KVC = storyboard.instantiateViewController(withIdentifier: "KitchenVC") as! KitchenViewController
        KVC.modalPresentationStyle = .fullScreen
        return KVC
    }
    
    
    @IBAction func menukclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
