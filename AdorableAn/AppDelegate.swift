//
//  AppDelegate.swift
//  TuAnhApp
//
//  Created by Gia Thy on 12/8/19.
//  Copyright © 2019 Gia Thy. All rights reserved.
//

import UIKit
import AVFoundation

var weadaysave: Int = 0
var weasave: Int = 0
var lovedaysave: Int = 0
var lovecount: Int = 0
var daycount: Int = 0
var v: Float = 0


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    
    var playerx: AVAudioPlayer? = nil
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        //Load userdefault
        UserDefaults.standard.register(defaults: ["vlume" : 1])
        if let v1 = UserDefaults.standard.object(forKey: "vlume") as? Float {v = v1}
        if let weadaysave1 = UserDefaults.standard.object(forKey: "weadaychecksave") as? Int {weadaysave = weadaysave1}
        if let weasave1 = UserDefaults.standard.object(forKey: "weasave") as? Int {weasave = weasave1}
        if let lovedaysave1 = UserDefaults.standard.object(forKey: "daychecksave") as? Int {lovedaysave = lovedaysave1}
        if let lovecount1 = UserDefaults.standard.object(forKey: "lovecountsave") as? Int {lovecount = lovecount1}
        if let daycount1 = UserDefaults.standard.object(forKey: "daycountsave") as? Int {daycount = daycount1}
        
        //Load weather
        let datew = Date()
        let formatterw = DateFormatter()
        formatterw.dateFormat = "dd"
        let resultw = formatterw.string(from: datew)
        let resultwi: Int? = Int(resultw)
        if weadaysave != resultwi
        {
            let wea2  = Int.random(in: 1 ... 4)
            weasave = wea2
            UserDefaults.standard.set(resultwi, forKey: "weadaychecksave")
            UserDefaults.standard.set(wea2, forKey: "weasave")
        }
        
        let notificationSettings = UIUserNotificationSettings(types: [.badge, .alert, .sound], categories: nil)
             UIApplication.shared.registerUserNotificationSettings(notificationSettings)
        UIApplication.shared.registerUserNotificationSettings(notificationSettings)
        self.createnoti()
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication)
    {
           application.applicationIconBadgeNumber = 0
    }
    
    func createnoti()
    {
        let today = Date()
        let calendar = NSCalendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: today)
        var dateComp: DateComponents = DateComponents()
        dateComp.day = components.day
        dateComp.month = components.month
        dateComp.year = components.year
        dateComp.hour = 21
        dateComp.minute = 00
        let date = calendar.date(from: dateComp)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MM yyyy hh:mm:ss"
        let fireDate = dateFormatter.string(from: date!)
        
        let notification = UILocalNotification()
        notification.fireDate = date
        notification.repeatInterval = .day
        notification.applicationIconBadgeNumber = 1
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.alertBody = "How was your day sweetie? Please tell me if you was happy or not ❤️"
        UIApplication.shared.scheduleLocalNotification(notification)
    }
    

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
    {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)
    {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

