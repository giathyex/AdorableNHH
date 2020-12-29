//
//  TodayViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 5/7/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController
{
    @IBOutlet weak var todaybanner: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if weasave == 1 {todaybanner.image = UIImage(named: "todaysunny")}
        if weasave == 2 {todaybanner.image = UIImage(named: "todaycloudy")}
        if weasave == 3 {todaybanner.image = UIImage(named: "todayrainy")}
        if weasave == 4 {todaybanner.image = UIImage(named: "todaysnowy")}
        self.setupToHidetodayv()
    }
    
    func todayv() -> TodayViewController
    {
        let storyboard = UIStoryboard(name: "Today", bundle: nil)
        let TDVC = storyboard.instantiateViewController(withIdentifier: "TodayVC") as! TodayViewController
        TDVC.modalPresentationStyle = .overCurrentContext
        return TDVC
    }
    
    func setupToHidetodayv()
       {
           let taptdv: UITapGestureRecognizer = UITapGestureRecognizer(
               target: self,
               action: #selector(TodayViewController.hidelabeltdv))

           view.addGestureRecognizer(taptdv)
       }

       @objc func hidelabeltdv()
       {
           dismiss(animated: true)
       }

}
