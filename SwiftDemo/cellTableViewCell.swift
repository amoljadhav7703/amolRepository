//
//  cellTableViewCell.swift
//  SwiftDemo
//
//  Created by arvind on 12/26/15.
//  Copyright © 2015 arvind. All rights reserved.
//

import UIKit

class cellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)!
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
