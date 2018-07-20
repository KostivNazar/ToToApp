//
//  Model.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/19/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import Foundation
import RealmSwift



class Model: Object {

  @objc dynamic var itemIndex: String = ""
  @objc dynamic var itemName: String = ""

}


//class Model {
//
//  var itemIndex: String?
//  var itemName: String?
//
//  init(itemIndex: String, itemName: String) {
//    self.itemIndex = itemIndex
//    self.itemName = itemName
//  }
//}
