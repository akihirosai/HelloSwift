//
//  AppDelegate.swift
//  HelloSwift
//
//  Created by apply-mac-mini on 2014/06/24.
//  Copyright (c) 2014年 apply-mac-mini. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?
    var myProperty: String?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        myProperty = "Foo";
        println(myProperty);
        
        var vc : ViewController = ViewController(nibName:nil, bundle:nil);
        self.window!.rootViewController = vc;
        
        var array : NSMutableArray = ["one", "two"];
        array.addObject("three");
        var dic : NSDictionary = ["dog": 2, "cat": 8];
        
        println("array = \(array)");
        println("dic = \(dic)");
        
        // var 変更可能な変数
        // let 変更不可能な変数
        
        var str = "okubo";
        //switch (str) {
        switch str {
        case "o":
            println("o");
        case "okubo":
            println("yes, I am");
        case "yamada":
            println("no");
        default:
            break;
        }
        
        println(self.doit());
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        
        println(appleSummary);
        println(fruitSummary);
        
        println("string " + String(apples));
        
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
        ]
        println("occupations= \(occupations)");
        occupations["Jayne"] = "Public Relations"
        println("occupations= \(occupations)");
        
        return true
    }
    
    func doit() -> Int {
        return 8;
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

