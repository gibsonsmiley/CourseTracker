//
//  ObjectiveTableViewCell.swift
//  CourseTracker
//
//  Created by Gibson Smiley on 2/12/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

protocol ObjectiveTableViewCellDelegate: class { // : class avoids a "retain cycle"
    func masterySwitchValueChangedOnCell(cell: ObjectiveTableViewCell)
}

class ObjectiveTableViewCell: UITableViewCell {

    @IBOutlet weak var objectiveLabel: UILabel!
    @IBOutlet weak var masterySwitch: UISwitch!
    
    weak var delegate: ObjectiveTableViewCellDelegate?
    
    @IBAction func masterySwitchValueChanged(sender: UISwitch) {
        delegate?.masterySwitchValueChangedOnCell(self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
