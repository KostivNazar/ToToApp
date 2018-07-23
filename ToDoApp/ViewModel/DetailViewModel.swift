//
//  DetailViewModel.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/23/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import Foundation
import UIKit
import ReactiveSwift
import Result

class DetailViewModel {
  let title: String

  init(title: String) {
    self.title = title
  }

  var goBack: Signal<Void, NoError> {
    return goBackSignal
  }
  private let (goBackSignal, goBackObserver) = Signal<Void, NoError>.pipe()

  func goBackPressed() {
    goBackObserver.send(value: ())	
  }
}
