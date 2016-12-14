//
//  AppDelegate.swift
//  PNTMUnsplash
//
//  Created by Evangelos Sismanidis on 12.12.16.
//  Copyright © 2016 Pintumo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        _ = PNTMUnsplashProvider.photos().subscribe(onNext: { strings in
            print(strings)
        })
        
        return true
    }
}

