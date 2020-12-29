//
//  MemoryViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/29/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class MemoryViewController: UIViewController
{
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
      
    @IBOutlet weak var menume: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func memory() -> MemoryViewController
    {
        let storyboard = UIStoryboard(name: "Memory", bundle: nil)
        let MEVC = storyboard.instantiateViewController(withIdentifier: "MemoryVC") as! MemoryViewController
        MEVC.modalPresentationStyle = .fullScreen
        return MEVC
    }
    
    
    @IBAction func menumeclick()
    {
        dismiss(animated: true, completion: nil)
    }
}
