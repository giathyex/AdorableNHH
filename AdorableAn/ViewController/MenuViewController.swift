//
//  MenuViewController.swift
//  AdorableAn
//
//  Created by Gia Thy on 4/28/20.
//  Copyright © 2020 Gia Thy. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController
{
    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var living: UIButton!
    @IBOutlet weak var garden: UIButton!
    @IBOutlet weak var bedroom: UIButton!
    @IBOutlet weak var kitchen: UIButton!
    @IBOutlet weak var wardrobe: UIButton!
    @IBOutlet weak var garage: UIButton!
    @IBOutlet weak var store: UIButton!
    @IBOutlet weak var memory: UIButton!
    @IBOutlet weak var info: UIButton!
    
    
    func menu() -> MenuViewController
    {
        let storyboard = UIStoryboard(name: "Menu", bundle: nil)
        let MENUVC = storyboard.instantiateViewController(withIdentifier: "MenuVC") as! MenuViewController
        MENUVC.modalPresentationStyle = .overCurrentContext
        return MENUVC
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setupToHide()
    }
    
    func setupToHide()
    {
        let tapm: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(MenuViewController.hidelabelm))

        view.addGestureRecognizer(tapm)
    }

    @objc func hidelabelm()
    {
        dismiss(animated: true)
    }
    
    let livingm = LivingViewController()
    let gardenm = GardenViewController()
    let bedroomm = BedroomViewController()
    let kitchenm = KitchenViewController()
    let wardrobem = WardrobeViewController()
    let garagem = GarageViewController()
    let storem = StoreViewController()
    let memorym = MemoryViewController()
    let infom = InfoViewController()
    
    @IBAction func livingclick()
    {
        let livingmx = livingm.living()
        livingmx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(livingmx, animated: true, completion: nil)
    }
    
    @IBAction func gardenclick()
    {
        let gardenmx = gardenm.garden()
        gardenmx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(gardenmx, animated: true, completion: nil)
    }
    
    @IBAction func bedroomclick()
    {
        let bedroommx = bedroomm.bedroom()
        bedroommx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(bedroommx, animated: true, completion: nil)
    }
    
    @IBAction func kitchenclick()
    {
        let kitchenmx = kitchenm.kitchen()
        kitchenmx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(kitchenmx, animated: true, completion: nil)
    }
    
    @IBAction func wardrobeclick()
    {
        let wardrobemx = wardrobem.wardrobe()
        wardrobemx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(wardrobemx, animated: true, completion: nil)
    }

    @IBAction func garageclick()
    {
        let garagemx = garagem.garage()
        garagemx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(garagemx, animated: true, completion: nil)
    }
    
    @IBAction func memoryclick()
    {
        let memorymx = memorym.memory()
        memorymx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(memorymx, animated: true, completion: nil)
    }
    
    @IBAction func storeclick()
    {
        let storemx = storem.store()
        storemx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(storemx, animated: true, completion: nil)
    }
    
    @IBAction func infoclick()
    {
        let infomx = infom.info()
        infomx.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(infomx, animated: true, completion: nil)
    }
}
