//
//  Statuses.swift
//  TableViewDequeueTest
//
//  Created by mobile on 2023/02/08.
//

import Foundation

class Statuses {
    var onOffStatuses: [OnOffStatus] = []
    
    func inputStatus(index:String, status:Bool) {
        self.onOffStatuses.append(OnOffStatus(index: index, switchStatus: status))
    }
}
