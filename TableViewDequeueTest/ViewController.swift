//
//  ViewController.swift
//  TableViewDequeueTest
//
//  Created by mobile on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var statuses = Statuses()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        for i in 0..<300 {
            statuses.inputStatus(index: String(i), status: true)
        }
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.tableView.rowHeight = 80
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource, ToggleDelegate {

    func setToggle(cell: UITableViewCell, mySwitch: UISwitch) {
        let index = tableView.indexPath(for: cell)
        statuses.onOffStatuses[(index?.row)!].switchStatus = mySwitch.isOn
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return statuses.onOffStatuses.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.number?.text = statuses.onOffStatuses[indexPath.row].index
        cell.toggle.isOn = statuses.onOffStatuses[indexPath.row].switchStatus

        return cell
    }
}

