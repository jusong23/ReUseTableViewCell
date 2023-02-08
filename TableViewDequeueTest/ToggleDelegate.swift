//
//  ToggleDelegate.swift
//  TableViewDequeueTest
//
//  Created by mobile on 2023/02/08.
//

import UIKit

protocol ToggleDelegate: AnyObject {
    func setToggle(cell: UITableViewCell, mySwitch: UISwitch)
}
