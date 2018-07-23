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

  var reload: ReloadTableView
  init(viewDelegate: ReloadTableView) {
    reload = viewDelegate
    
  }
}

extension ViewModel: ViewModelDelegate {

  func onItemAddClick(newItem: String) {
    let model = Model()
    model.itemName = newItem
    model.itemIndex = "\(DBManager.sharedInstance.getDataFromDB().count + 1)"
    DBManager.sharedInstance.addData(object: model)
    reload.reloadTableView(index: DBManager.sharedInstance.getDataFromDB().count)
  }
}














