//
//  AppContainer.swift
//  iTunesPreviewer
//
//  Created by YangJinMo on 2021/04/28.
//

import UIKit

final class AppContainer {
  
  // MARK: - Constants
  
  static let instance: AppContainer = AppContainer()
  
  // MARK: - Private Variables And Properties
  
  private lazy var queryService: QueryServiceProtocol = QueryService()
  
  private var musicsViewModel: MusicsViewModel {
    return MusicsViewModel(queryService: queryService)
  }
  
  // MARK: - Internal Properties
  
  var musicsViewController: MusicsViewController {
    return MusicsViewController(viewModel: musicsViewModel)
  }
}
