//
//  RealmManager.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/20/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import Foundation
import RealmSwift


class DBManager {
  private var   database:Realm
  static let   sharedInstance = DBManager()
  private init() {
    database = try! Realm()
  }

  func getDataFromDB() ->   Results<Model> {
    let results: Results<Model> =   database.objects(Model.self)
    return results
  }

  func addData(object: Model){
    try! database.write {
      database.add(object)
      print("Added new object")
    }
  }


  func deleteFromDb(object: Model){
    try!   database.write {
      database.delete(object)
    }
  }
}
