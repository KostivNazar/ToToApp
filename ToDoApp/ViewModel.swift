//
//  ViewModel.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/19/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import Foundation


protocol ReloadTableView {
  func reloadTableView(index: Int)
}

protocol ViewModelDelegate {
  func onItemAddClick(newItem: String)
}
class ViewModel {

  var items = [Model]()
  
  var reload: ReloadTableView

  init(viewDelegate: ReloadTableView) {
    reload = viewDelegate
    
  }
}


extension ViewModel: ViewModelDelegate {
  func onItemAddClick(newItem: String) {

    let itemCount = "\(items.count + 1)"
    items.append(Model(itemIndex: itemCount, itemName: newItem))

    reload.reloadTableView(index: items.count)
  }
}
