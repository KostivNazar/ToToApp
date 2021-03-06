//
//  ViewController.swift
//  ToDoApp
//
//  Created by Nazar Kostiv on 7/19/18.
//  Copyright © 2018 Nazar Kostiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var viewModel: ViewModel?

  @IBOutlet weak var itemTextField: UITextField!
  @IBOutlet weak var itemTableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel = ViewModel(viewDelegate: self )
    let nib = UINib(nibName: "ItemTableViewCell", bundle: nil)
    itemTableView.register(nib, forCellReuseIdentifier: "itemCell")
    itemTableView.dataSource = self
  }

  @IBAction func itemAddAction(_ sender: Any) {
    viewModel?.onItemAddClick(newItem: itemTextField.text!)
  }
}
extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return (viewModel?.items.count)!
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as? ItemTableViewCell
    cell?.setupDataFromModel(model: (viewModel?.items[indexPath.row])!)
    return cell!
  }
}

extension ViewController: ReloadTableView {

  func reloadTableView(index: Int) {
    itemTextField.text = ""
   // itemTableView.beginUpdates()
    itemTableView.insertRows(at: [IndexPath(row: index-1, section: 0)], with: .automatic)
  //  itemTableView.endUpdates()
  }
}


