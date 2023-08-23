//
//  MatchInfoVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

class MatchInfoVC: UIViewController {

    @IBOutlet weak var tblMatchInfo: UITableView!
    
    var strSelectMtch: String!
        
    var arrInfoTitleList = ["Date", "Over", "Match Type", "Toss", "Ball"]
    var arrInfoList = ["Sat, 10th Jul 2021", "16.0", "Limited Over", "Team_2", "Tennis"]
    
    var arrT1PlayerList = ["Ankit", "Darshan", "Dhaval_A", "Dipak", "Jay_J", "Kapil", "Krunal_G", "Milan","Nayan", "Rakshit", "Senjal", "Sunil"]
    
    var arrT1PlayerTypeList = ["All-Rounder", "WK-Batsman", "All-Rounder", "Batsman", "Bowler", "All-Rounder", "All-Rounder", "All-Rounder", "All-Rounder", "Batsman", "All-Rounder", "Batsman"]
    
    var arrT1PlayerImgList = ["ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon"]

     var arrT2PlayerList = ["Bhomik", "Dabhi", "Dhaval_R", "Divish", "Jay_K", "Kejash", "Kunal_V", "Mrudul", "Parth", "Sanket", "Soham", "Umang"]
     
     var arrT2PlayerTypeList = ["All-Rounder", "Batsman", "All-Rounder", "All-Rounder", "All-Rounder", "Bowler", "Bowler", "Bowler", "Batsman", "Bowler", "All-Rounder", "WK-Batsman"]
     
     var arrT2PlayerImgList = ["ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon", "ProfileIcon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tblMatchInfo.register(UINib(nibName: "TeamNameCell", bundle: nil), forCellReuseIdentifier: "TeamNameCell")
        self.tblMatchInfo.register(UINib(nibName: "InfoHeaderCell", bundle: nil), forCellReuseIdentifier: "InfoHeaderCell")
        self.tblMatchInfo.register(UINib(nibName: "InfoDetailCell", bundle: nil), forCellReuseIdentifier: "InfoDetailCell")
    }
       
    @IBAction func onClickBackBtn(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: ViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func onClickScorecardBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "ScorecardVC") as! ScorecardVC
        lc.strSelectMtch = strSelectMtch
        navigationController?.pushViewController(lc, animated: false)
    }
    
    @IBAction func onClickOverBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "OverInfoVC") as! OverInfoVC
        lc.strSelectMtch = strSelectMtch
        navigationController?.pushViewController(lc, animated: false)
    }
}

//MARK:- Tableview Delegate Datasource
extension MatchInfoVC : UITableViewDelegate, UITableViewDataSource, TeamNameCellDelegate {
         
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let infoHeaderCell = tableView.dequeueReusableCell(withIdentifier: "InfoHeaderCell") as! InfoHeaderCell

        if section == 0 {
            infoHeaderCell.lblInfoTitle.text = "SQUADS"
        }else {
            infoHeaderCell.lblInfoTitle.text = "INFO"
        }

        return infoHeaderCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 20))
//        footerView.backgroundColor = UIColor.appNavColor
//        return footerView
//    }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 20
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 1 {
            return arrInfoList.count
        }else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let teamNameCell = tableView.dequeueReusableCell(withIdentifier: "TeamNameCell") as! TeamNameCell
            
            teamNameCell.delegate = self
            teamNameCell.intIndex = indexPath.row
            
            if indexPath.row == 1 {
                teamNameCell.lblTeamName.text = "Team_1"
                teamNameCell.lineView.isHidden = true
            }else {
                teamNameCell.lblTeamName.text = "Team_2"
                teamNameCell.lineView.isHidden = false
            }
            
            teamNameCell.selectionStyle = .none
            
            return teamNameCell
        }else {
            let infoCell = tableView.dequeueReusableCell(withIdentifier: "InfoDetailCell") as! InfoDetailCell
            
            let infoData = arrInfoTitleList[indexPath.row]
            let infoTitleData = arrInfoList[indexPath.row]
            
            infoCell.lblInfo.text = infoTitleData
            infoCell.lblTitle.text = infoData
            
            return infoCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ClickGallery")
    }
    
    func onClickTeamName(index: NSInteger) {
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "TeamPlayerListVC") as! TeamPlayerListVC
        
        lc.arrT1SPlayerList.append(contentsOf: arrT1PlayerList)
        lc.arrT1SPlayerTypeList.append(contentsOf: arrT1PlayerTypeList)
        lc.arrT1SPlayerImgList.append(contentsOf: arrT1PlayerImgList)
        
        lc.arrT2SPlayerList.append(contentsOf: arrT2PlayerList)
        lc.arrT2SPlayerTypeList.append(contentsOf: arrT2PlayerTypeList)
        lc.arrT2SPlayerImgList.append(contentsOf: arrT2PlayerImgList)
                
        lc.strInfo = "Yes"
        
        navigationController?.pushViewController(lc, animated: true)
    }
}
