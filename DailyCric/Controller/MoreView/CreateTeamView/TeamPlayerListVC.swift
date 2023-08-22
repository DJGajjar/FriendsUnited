//
//  TeamPlayerListVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 03/07/21.
//

import UIKit

class TeamPlayerListVC: UIViewController {

    @IBOutlet weak var tblTeamPlayerList: UITableView!
    
    @IBOutlet weak var viewTeam_1: UIView!
    @IBOutlet weak var viewTeam_2: UIView!
    
    @IBOutlet weak var btnNext: UIButton!
    
    var arrT1SPlayerList = [String]()
    var arrT1SPlayerTypeList = [String]()
    var arrT1SPlayerImgList = [String]()
    
    var arrT2SPlayerList = [String]()
    var arrT2SPlayerTypeList = [String]()
    var arrT2SPlayerImgList = [String]()
    
    var arrPlayerList = [String]()
    var arrPlayerType = [String]()
    var arrPlayerImgList = [String]()
    
    var strTeam1OPT: String!
    var strTeam2OPT: String!
    var strInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tblTeamPlayerList.register(UINib(nibName: "PlayerListCell", bundle: nil), forCellReuseIdentifier: "PlayerListCell")
        
        viewTeam_1.isHidden = false
        viewTeam_2.isHidden = true
        
        arrPlayerList.append(contentsOf: arrT1SPlayerList)
        arrPlayerType.append(contentsOf: arrT1SPlayerTypeList)
        arrPlayerImgList.append(contentsOf: arrT1SPlayerImgList)
        
        if strInfo == "Yes" {
            btnNext.isHidden = true
        }
    }
    
    @IBAction func onClickTeam1Btn(_ sender: Any) {
        viewTeam_1.isHidden = false
        viewTeam_2.isHidden = true
        
        arrPlayerList.removeAll()
        arrPlayerType.removeAll()
        arrPlayerImgList.removeAll()
        
        arrPlayerList.append(contentsOf: arrT1SPlayerList)
        arrPlayerType.append(contentsOf: arrT1SPlayerTypeList)
        arrPlayerImgList.append(contentsOf: arrT1SPlayerImgList)
        
        tblTeamPlayerList.reloadData()
    }
    
    @IBAction func onClickTeam2Btn(_ sender: Any) {
        viewTeam_1.isHidden = true
        viewTeam_2.isHidden = false
        
        arrPlayerList.removeAll()
        arrPlayerType.removeAll()
        arrPlayerImgList.removeAll()
        
        arrPlayerList.append(contentsOf: arrT2SPlayerList)
        arrPlayerType.append(contentsOf: arrT2SPlayerTypeList)
        arrPlayerImgList.append(contentsOf: arrT2SPlayerImgList)
        
        tblTeamPlayerList.reloadData()
    }
    
    @IBAction func onClickNextBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "PlayerSelectVC") as! PlayerSelectVC
        
        lc.arrT1SPlayerList.append(contentsOf: arrT1SPlayerList)
        lc.arrT1SPlayerTypeList.append(contentsOf: arrT1SPlayerTypeList)
        lc.arrT1SPlayerImgList.append(contentsOf: arrT1SPlayerImgList)
        
        lc.arrT2SPlayerList.append(contentsOf: arrT2SPlayerList)
        lc.arrT2SPlayerTypeList.append(contentsOf: arrT2SPlayerTypeList)
        lc.arrT2SPlayerImgList.append(contentsOf: arrT2SPlayerImgList)
        
        lc.strTeam1OPT = strTeam1OPT
        lc.strTeam2OPT = strTeam2OPT
        
        navigationController?.pushViewController(lc, animated: true)
    }
}

extension TeamPlayerListVC : UITableViewDataSource, UITableViewDelegate, PlayerListCellDelegate{
    //MARK:- Table View Delegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlayerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PlayerListCell = self.tblTeamPlayerList.dequeueReusableCell(withIdentifier: "PlayerListCell") as! PlayerListCell

        cell.delegate = self
        cell.intIndex = indexPath.row
        
        cell.lblPlayerName.text = arrPlayerList[indexPath.row]
        cell.lblPlayerType.text = arrPlayerType[indexPath.row]
        cell.imgIcon.image = UIImage(named: arrPlayerImgList[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Did select cell")
    }
    
    func onClickPlayerDetailShow(index: NSInteger) {
        let sb = UIStoryboard(name: "More", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "PlayerInfoDetailVC") as! PlayerInfoDetailVC
        navigationController?.pushViewController(lc, animated: true)
    }
}
