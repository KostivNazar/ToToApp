//
//  ItemTableViewCell.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/19/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit


class ItemTableViewCell: UITableViewCell {


  @IBOutlet weak var itemNameLabel: UILabel!
  @IBOutlet weak var itemIndexLabel: UILabel!

  override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

  func setupDataFromModel(model: Model) {
    self.itemNameLabel.text = model.itemIndex
    self.itemIndexLabel.text = model.itemName
  }
    
}
