//
//  AppCoordinator.swift
//  MVVMRxSwift
//
//  Created by YangJinMo on 2021/04/09.
//

import UIKit

class AppCoordinator {
  
  private let window: UIWindow
  
  init(window: UIWindow) {
    self.window = window
  }
  
  func start() {
    let viewController = ViewController.instantiate()
    let navigationController = UINavigationController(rootViewController: viewController)
    window.rootViewController = navigationController
    window.makeKeyAndVisible()
  }
}