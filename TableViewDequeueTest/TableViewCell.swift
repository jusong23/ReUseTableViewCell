//
//  TableViewCell.swift
//  TableViewDequeueTest
//
//  Created by mobile on 2023/02/08.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var toggle: UISwitch!
    
    weak var delegate: ToggleDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func toggleSeleted(_ sender: UISwitch) {
        self.delegate?.setToggle(cell: self, mySwitch: toggle)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.toggle.isOn = true
    }
}
