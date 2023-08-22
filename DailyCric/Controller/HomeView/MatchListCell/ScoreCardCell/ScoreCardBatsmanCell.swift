//
//  ScoreCardBatsmanCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

class ScoreCardBatsmanCell: UITableViewCell {

    @IBOutlet weak var lblBatsman1: UILabel!
    @IBOutlet weak var lblBatsman2: UILabel!
    @IBOutlet weak var lblBat1Runs: UILabel!
    @IBOutlet weak var lblBat1Ball: UILabel!
    @IBOutlet weak var lblBat1Four: UILabel!
    @IBOutlet weak var lblBat1Six: UILabel!
    @IBOutlet weak var lblBat1SR: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
