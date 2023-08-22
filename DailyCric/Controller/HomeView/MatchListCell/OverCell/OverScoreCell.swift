//
//  OverScoreCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

class OverScoreCell: UITableViewCell {

    @IBOutlet weak var lblCRR: UILabel!
    @IBOutlet weak var lblPShip: UILabel!
    @IBOutlet weak var lblOVS: UILabel!
    
    @IBOutlet weak var lblBatsman1: UILabel!
    @IBOutlet weak var lblBatsman2: UILabel!
    @IBOutlet weak var lblBat1Runs: UILabel!
    @IBOutlet weak var lblBat1Ball: UILabel!
    @IBOutlet weak var lblBat1Four: UILabel!
    @IBOutlet weak var lblBat1Six: UILabel!
    @IBOutlet weak var lblBat1SR: UILabel!
    
    @IBOutlet weak var lblBat2Runs: UILabel!
    @IBOutlet weak var lblBat2Ball: UILabel!
    @IBOutlet weak var lblBat2Four: UILabel!
    @IBOutlet weak var lblBat2Six: UILabel!
    @IBOutlet weak var lblBat2SR: UILabel!
    
    @IBOutlet weak var lblBowler: UILabel!
    @IBOutlet weak var lblBowOVS: UILabel!
    @IBOutlet weak var lblBowMedan: UILabel!
    @IBOutlet weak var lblBowRuns: UILabel!
    @IBOutlet weak var lblBowWicket: UILabel!
    @IBOutlet weak var lblBowEco: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
