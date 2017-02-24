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

  let homeMenu = MenuData(#imageLiteral(resourceName: "Home"), ["Cars", "Coffee"], [SampleData.sharedInstance.carMenu, SampleData.sharedInstance.coffeeMenu])
  let carMenu = MenuData(#imageLiteral(resourceName: "Car"), ["Lexus", "Mercedes", "Honda"], nil)
  let coffeeMenu = MenuData(#imageLiteral(resourceName: "Coffee"), ["Cappucino", "Americano", "Latte", "Frappuccino"], nil)

}

