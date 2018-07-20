//
//  DetailViewController.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/20/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  
  @IBOutlet weak var pressBackAction: UIButton!

  @IBAction func pressBackAction(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
  var textData: String?
  
  override func viewDidLoad() {
        super.viewDidLoad()
    label.text = textData
    }

}
