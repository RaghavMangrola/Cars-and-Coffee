//
//  MenuVC.swift
//  Cars and Coffee
//
//  Created by Raghav Mangrola on 2/24/17.
//  Copyright © 2017 Raghav Mangrola. All rights reserved.
//

import Foundation
import UIKit

class MenuVC: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var tableView: UITableView!


  var menuData: Menu?

  override func viewDidLoad() {

    tableView.delegate = self
    tableView.dataSource = self

    log.debug(self.menuData)

    imageView.image = UIImage(named: (menuData?.imageName!)!)
  }

}

extension MenuVC: UITableViewDelegate {

//  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let menuVC = storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
//    menuVC.menuData = (menuData?.data?[indexPath.row])!
//    navigationController?.pushViewController(menuVC, animated: true)
//  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

    return tableView.frame.size.height/CGFloat((menuData!.kind?.count)!)
  }
}

extension MenuVC: UITableViewDataSource {

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()

    cell.textLabel?.text = menuData?.kind?[indexPath.row]

    return cell
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuData!.kind!.count
  }
}
