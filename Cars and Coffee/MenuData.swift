//
//  MenuData.swift
//  Cars and Coffee
//
//  Created by Raghav Mangrola on 2/24/17.
//  Copyright © 2017 Raghav Mangrola. All rights reserved.
//

import Foundation
import UIKit

class MenuData {
  let image: UIImage?
  let tableViewItems: [String]?
  let data: [MenuData]?

  init(_ image: UIImage?, _ tableViewItems: [String]?, _ data: [MenuData]?) {
    self.image = image
    self.tableViewItems = tableViewItems
    self.data = data
  }
}
