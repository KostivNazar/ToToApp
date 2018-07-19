//
//  Model.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/19/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import Foundation



class Model {

  var itemIndex: String?
  var itemName: String?

  init(itemIndex: String, itemName: String) {
    self.itemIndex = itemIndex
    self.itemName = itemName
  }

  init(dictionary: NSDictionary) {
    self.itemIndex = dictionary["itemIndex"] as? String
    self.itemName = dictionary["itemName"] as? String
  }

  public class func modelFromDict(array: NSArray) -> [Model] {
    var items = [Model]()
    for data in array {
      items.append(Model(dictionary: data as! NSDictionary))
    }
    return items
  }
}
