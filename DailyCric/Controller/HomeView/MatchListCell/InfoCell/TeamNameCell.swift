//
//  TeamNameCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

protocol TeamNameCellDelegate {
    func onClickTeamName(index: NSInteger)
}

class TeamNameCell: UITableViewCell {

    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var lblTeamName: UILabel!
    
    var delegate : TeamNameCellDelegate?
    var intIndex: Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickMatchInfoBtn(_ sender: Any) {
        delegate?.onClickTeamName(index: intIndex)
    }
    
}
