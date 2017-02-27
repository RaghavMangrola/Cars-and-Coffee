//
//  AppDelegate.swift
//  Cars and Coffee
//
//  Created by Raghav Mangrola on 2/24/17.
//  Copyright © 2017 Raghav Mangrola. All rights reserved.
//

import UIKit
import SwiftyJSON
import XCGLogger

let log = XCGLogger.default
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.

    log.setup()

    let json = getJSONFromFile()

    window = UIWindow(frame: UIScreen.main.bounds)
    let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let menuVC: MenuVC = mainStoryboard.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
    menuVC.menuData = makeMenuFrom(json: json)

    window?.rootViewController = menuVC
    window?.makeKeyAndVisible()

    return true
  }

  func getJSONFromFile() -> JSON {

    guard let path = Bundle.main.path(forResource: "CarsAndCoffee", ofType: "json") else {
      log.debug("Couldn't find CarsAndCoffee.json")
      return JSON.null
    }

    guard let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
      log.debug("Could not initialize Data with contents of \(path))")
      return JSON.null
    }

    let json = JSON(data: jsonData)

    return json
  }

  func makeMenuFrom(json: JSON) -> Menu? {
    guard let imageName = json["Menu"]["image"].string else {
      return nil
    }
    let kind = json["Menu"]["kind"].arrayValue.map { $0.stringValue }
    log.debug(kind)
    let menu = Menu(imageName, kind)

    return menu
  }
}

