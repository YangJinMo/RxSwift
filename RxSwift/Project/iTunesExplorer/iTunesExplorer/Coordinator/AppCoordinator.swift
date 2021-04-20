//
//  AppCoordinator.swift
//  iTunesExplorer
//
//  Created by YangJinMo on 2021/04/20.
//

import UIKit

class AppCoordinator {
  
  private let window: UIWindow
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    let viewController = ViewController.instantiate(viewModel: RestaurantsListModel())
    let navigationController = UINavigationController(rootViewController: viewController)
    window.rootViewController = navigationController
    window.makeKeyAndVisible()
  }
}
