//
//  SCHeaderView.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 14/07/21.
//

import UIKit

protocol SCHeaderViewDelegate {
    func onClickExpandColaps(index: NSInteger)
}

class SCHeaderView: UITableViewCell {

    @IBOutlet weak var lblTeamName: UILabel!
    @IBOutlet weak var lblTeamScore: UILabel!
    
    @IBOutlet weak var imgDropDown: UIImageView!
    
    var delegate : SCHeaderViewDelegate?
    var intIndex: Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickExpandColapsBtn(_ sender: Any) {
        delegate?.onClickExpandColaps(index: intIndex)
    }
    
}
