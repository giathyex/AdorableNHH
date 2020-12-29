//
//  LoveViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 5/1/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

class LoveViewController: UIViewController
{
    var lovecountint: Int = 0
    var daycheckint: Int = 0
    var daycountint: Int = 0
    
    @IBOutlet weak var lovebanner: UIImageView!
    @IBOutlet weak var verti: UIImageView!
    @IBOutlet weak var verti2: UIImageView!
    @IBOutlet weak var hori: UIImageView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var icon: UIButton!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var totalnumber: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var reason: UITextField!
    @IBOutlet weak var comebacktomorrow: UILabel!
    @IBOutlet weak var upset: UIButton!
    @IBOutlet weak var no: UIButton!
    @IBOutlet weak var yes: UIButton!
    
    func lovev() -> LoveViewController
     {
         let storyboard = UIStoryboard(name: "Love", bundle: nil)
         let LOVVC = storyboard.instantiateViewController(withIdentifier: "LoveVC") as! LoveViewController
         LOVVC.modalPresentationStyle = .overCurrentContext
         return LOVVC
     }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let date1 = Date()
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "dd"
        let result1 = formatter1.string(from: date1)
        let result1i:Int? = Int(result1)
        if let x = UserDefaults.standard.object(forKey: "daychecksave") as? Int
        {
            if x == result1i
            {
                question.isHidden = true
                upset.isHidden = true
                no.isHidden = true
                yes.isHidden = true
                comebacktomorrow.isHidden = false
            }
            else if x != result1i
            {
                question.isHidden = false
                upset.isHidden = false
                no.isHidden = false
                yes.isHidden = false
                comebacktomorrow.isHidden = true
            }
        }
        if let y = UserDefaults.standard.object(forKey: "lovecountsave") as? Int
        {
            lovecountint = y
            let lovecountstring = String(lovecountint)
            number.text = lovecountstring
        }
        if let z = UserDefaults.standard.object(forKey: "daycountsave") as? Int
        {
            daycountint = z
            let daycountstring = String(daycountint)
            totalnumber.text = daycountstring
        }
        self.setupToHidelov()
    }
    
    
    func setupToHidelov()
    {
        let taplov: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(LoveViewController.hidelabellov))

        view.addGestureRecognizer(taplov)
    }

    @objc func hidelabellov()
    {
        dismiss(animated: true)
    }
    
    @IBAction func iconhistoryclick()
    {
    }
    @IBAction func upsetclick()
    {
        question.isHidden = true
        upset.isHidden = true
        no.isHidden = true
        yes.isHidden = true
        comebacktomorrow.text = "I'm sorry :(\nPlease tell me where I was wrong"
        comebacktomorrow.isHidden = false
        if lovecountint > 0
        {
            lovecountint = lovecountint - 1
        }
        if daycountint > 0
        {
            daycountint = daycountint - 1
        }
        let lovecountstring1 = String(lovecountint)
        number.text = lovecountstring1
        let daycountstring1 = String(daycountint)
        totalnumber.text = daycountstring1
        UserDefaults.standard.set(lovecountint, forKey: "lovecountsave")
        UserDefaults.standard.set(daycountint, forKey: "daycountsave")
        let date2 = Date()
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "dd"
        let result2 = formatter2.string(from: date2)
        let result2i:Int? = Int(result2)
        UserDefaults.standard.set(result2i, forKey: "daychecksave")
    }
    @IBAction func noclick()
    {
        question.isHidden = true
        upset.isHidden = true
        no.isHidden = true
        yes.isHidden = true
        comebacktomorrow.text = "I hope tonorrow will be better"
        comebacktomorrow.isHidden = false
        let date2 = Date()
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "dd"
        let result2 = formatter2.string(from: date2)
        let result2i:Int? = Int(result2)
        UserDefaults.standard.set(result2i, forKey: "daychecksave")
        UserDefaults.standard.set(lovecountint, forKey: "lovecountsave")
    }
    @IBAction func yesclick()
    {
        question.isHidden = true
        upset.isHidden = true
        no.isHidden = true
        yes.isHidden = true
        comebacktomorrow.text = "You know I love you a lot :>"
        comebacktomorrow.isHidden = false
        lovecountint = lovecountint + 1
        daycountint = daycountint + 1
        let lovecountstring = String(lovecountint)
        number.text = lovecountstring
        let daycountstring1 = String(daycountint)
        totalnumber.text = daycountstring1
        UserDefaults.standard.set(lovecountint, forKey: "lovecountsave")
        UserDefaults.standard.set(daycountint, forKey: "daycountsave")
        let date2 = Date()
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "dd"
        let result2 = formatter2.string(from: date2)
        let result2i:Int? = Int(result2)
        UserDefaults.standard.set(result2i, forKey: "daychecksave")
    }
}
