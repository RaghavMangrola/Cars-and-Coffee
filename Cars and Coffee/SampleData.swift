//
//  SampleData.swift
//  Cars and Coffee
//
//  Created by Raghav Mangrola on 2/24/17.
//  Copyright © 2017 Raghav Mangrola. All rights reserved.
//

import Foundation
import UIKit

class SampleData {

  static let sharedInstance = SampleData()

  struct MenuData {
    let image: UIImage?
    let tableViewItems: [String]?
    let data: [MenuData]?
  }

  let homeMenu = MenuData(image: #imageLiteral(resourceName: "Home"), tableViewItems: ["Cars", "Coffee"], data: nil)
  let carMenu = MenuData(image: #imageLiteral(resourceName: "Car"), tableViewItems: ["Lexus", "Mercedes", "Honda"], data: nil)
  let coffeeMenu = MenuData(image: #imageLiteral(resourceName: "Coffee"), tableViewItems: ["Cappucino", "Americano", "Latte", "Frappuccino"], data: nil)
  
  
}

