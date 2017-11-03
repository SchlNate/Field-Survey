//
//  ObservationTableViewCell.swift
//  Field Survey
//
//  Created by Nathan Schlechte on 11/2/17.
//  Copyright © 2017 Nathan Schlechte. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
