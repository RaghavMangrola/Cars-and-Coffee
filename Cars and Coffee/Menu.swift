//
//  Menu.swift
//  Cars and Coffee
//
//  Created by Raghav Mangrola on 2/26/17.
//  Copyright © 2017 Raghav Mangrola. All rights reserved.
//

import Foundation
import SwiftyJSON

class Menu {
  let imageName: String?
  let kind: [String]?

  init(_ imageName: String, _ kind: [String]) {
    self.imageName = imageName
    self.kind = kind
  }
}
