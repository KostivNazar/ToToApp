//
//  DetailViewController.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/20/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit
import ReactiveSwift
import Result


class DetailViewController: UIViewController {

  @IBOutlet private weak var label: UILabel!
  @IBOutlet private weak var pressBackAction: UIButton!
  var viewModel: DetailViewModel!
  var lifetime = Lifetime.make()

  @IBAction func pressBackAction(_ sender: Any) {
    viewModel.goBackPressed()
  }
  
  override func viewDidLoad() {
      super.viewDidLoad()
    label.text = viewModel.title
    viewModel.goBack.take(during: lifetime.lifetime).observeValues { [weak self] in
      self?.dismiss(animated: true, completion: nil)
    }
  }

}
