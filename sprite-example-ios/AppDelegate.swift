//
//  AppDelegate.swift
//  sprite-example-ios
//
//  Created by Stefan Nebel on 16.03.21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = ViewController()
    self.window?.makeKeyAndVisible()

    return true
  }
}

