//
//  MoreListCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 01/07/21.
//

import UIKit

protocol MoreListCellDelegate {
    func onClickAction(index: NSInteger)
}

class MoreListCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var imgIcon: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    var delegate : MoreListCellDelegate?
    var intIndex: Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        backView.layer.shadowOpacity = 0.8
        backView.layer.shadowOffset = .zero
        backView.layer.shadowRadius = 2.8
        backView.layer.cornerRadius = 10.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickOtpBtn(_ sender: Any) {
        delegate?.onClickAction(index: intIndex)
    }
    
}
