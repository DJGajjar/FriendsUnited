//
//  SCTeamPlayerCell.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 14/07/21.
//

import UIKit

class SCTeamPlayerCell: UITableViewCell {

    @IBOutlet weak var tblPlayerDetail: UITableView!
    @IBOutlet weak var constraintHeightTable: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.tblPlayerDetail.register(UINib(nibName: "SCBatsmanHeaderCell", bundle: nil), forCellReuseIdentifier: "SCBatsmanHeaderCell")
        self.tblPlayerDetail.register(UINib(nibName: "SCBowlerHeaderCell", bundle: nil), forCellReuseIdentifier: "SCBowlerHeaderCell")
        self.tblPlayerDetail.register(UINib(nibName: "SCWicketHeaderCell", bundle: nil), forCellReuseIdentifier: "SCWicketHeaderCell")
        self.tblPlayerDetail.register(UINib(nibName: "SCPowerPlayHeaderCell", bundle: nil), forCellReuseIdentifier: "SCPowerPlayHeaderCell")
        
        self.tblPlayerDetail.register(UINib(nibName: "ScoreCardBatsmanCell", bundle: nil), forCellReuseIdentifier: "ScoreCardBatsmanCell")
        self.tblPlayerDetail.register(UINib(nibName: "SCBowlerCell", bundle: nil), forCellReuseIdentifier: "SCBowlerCell")
        self.tblPlayerDetail.register(UINib(nibName: "SCFallWiCell", bundle: nil), forCellReuseIdentifier: "SCFallWiCell")
        self.tblPlayerDetail.register(UINib(nibName: "PowerPlayCell", bundle: nil), forCellReuseIdentifier: "PowerPlayCell")
        self.tblPlayerDetail.register(UINib(nibName: "ExtrasCell", bundle: nil), forCellReuseIdentifier: "ExtrasCell")
        self.tblPlayerDetail.register(UINib(nibName: "TotalScoreCell", bundle: nil), forCellReuseIdentifier: "TotalScoreCell")
        self.tblPlayerDetail.register(UINib(nibName: "FooterDNBCell", bundle: nil), forCellReuseIdentifier: "FooterDNBCell")
                
        tblPlayerDetail.estimatedRowHeight = 60
        tblPlayerDetail.estimatedSectionHeaderHeight = 30
        tblPlayerDetail.rowHeight = UITableView.automaticDimension
        tblPlayerDetail.sectionHeaderHeight = UITableView.automaticDimension
        
        reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func reloadData() {
        tblPlayerDetail.reloadData()
        
//        constraintHeightTable.isActive = false
//        return
//        tblPlayerDetail.setHeightFull(sender: constraintHeightTable)
    }
}

//MARK:- Tableview Delegate Datasource
extension SCTeamPlayerCell : UITableViewDelegate, UITableViewDataSource {
             
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let scHeaderCell = tableView.dequeueReusableCell(withIdentifier: "SCBatsmanHeaderCell") as! SCBatsmanHeaderCell
            return scHeaderCell
        }else if section == 1 {
            let scHeaderCell = tableView.dequeueReusableCell(withIdentifier: "SCBowlerHeaderCell") as! SCBowlerHeaderCell
            return scHeaderCell
        }else if section == 2 {
            let scHeaderCell = tableView.dequeueReusableCell(withIdentifier: "SCWicketHeaderCell") as! SCWicketHeaderCell
            return scHeaderCell
        }else {
            let scHeaderCell = tableView.dequeueReusableCell(withIdentifier: "SCPowerPlayHeaderCell") as! SCPowerPlayHeaderCell
            return scHeaderCell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 7
        }else if section == 1 {
            return 5
        }else if section == 2 {
            return 5
        }else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            if indexPath.row == 5 {
                let extrasCell = tableView.dequeueReusableCell(withIdentifier: "ExtrasCell") as! ExtrasCell
                
                extrasCell.selectionStyle = .none
                
                return extrasCell
            }else if indexPath.row == 6 {
                let totalScoreCell = tableView.dequeueReusableCell(withIdentifier: "TotalScoreCell") as! TotalScoreCell
                
                totalScoreCell.selectionStyle = .none
                
                return totalScoreCell
            }else {
                let playerRunListCell = tableView.dequeueReusableCell(withIdentifier: "ScoreCardBatsmanCell") as! ScoreCardBatsmanCell
                
                playerRunListCell.selectionStyle = .none
                
                return playerRunListCell
            }
        }else if indexPath.section == 1 {
            let bowlerCell = tableView.dequeueReusableCell(withIdentifier: "SCBowlerCell") as! SCBowlerCell
            
            bowlerCell.selectionStyle = .none
            
            return bowlerCell
        }else if indexPath.section == 2 {
            let FallWicketCell = tableView.dequeueReusableCell(withIdentifier: "SCFallWiCell") as! SCFallWiCell
            
            FallWicketCell.selectionStyle = .none
            
            return FallWicketCell
        }else {
            let powerPlayCell = tableView.dequeueReusableCell(withIdentifier: "PowerPlayCell") as! PowerPlayCell
            
            powerPlayCell.selectionStyle = .none
            
            return powerPlayCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ClickGallery")
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 0 {
            let footerDNBCell = tableView.dequeueReusableCell(withIdentifier: "FooterDNBCell") as! FooterDNBCell
            return footerDNBCell
        }else {
            return nil
        }
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 {
            return 78
        }else {
            return 0
        }
    }
}
