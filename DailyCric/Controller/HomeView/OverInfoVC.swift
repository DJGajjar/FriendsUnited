//
//  OverInfoVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

class OverInfoVC: UIViewController {
    
    @IBOutlet weak var tblOverInfo: UITableView!
    @IBOutlet weak var constHeightInfo: NSLayoutConstraint!
    @IBOutlet weak var constHeightWonInfo: NSLayoutConstraint!
    @IBOutlet weak var constHeightInnInfo: NSLayoutConstraint!
    
    var strSelectMtch: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if strSelectMtch == "Yes" {
            constHeightWonInfo.constant = 0.0
            constHeightInnInfo.constant = 96.0
        }else {
            constHeightWonInfo.constant = 96.0
            constHeightInnInfo.constant = 0.0
        }
        
        constHeightInfo.constant = constHeightInnInfo.constant + constHeightWonInfo.constant
        
        self.tblOverInfo.register(UINib(nibName: "OverScoreCell", bundle: nil), forCellReuseIdentifier: "OverScoreCell")
        self.tblOverInfo.register(UINib(nibName: "OverInfoCell", bundle: nil), forCellReuseIdentifier: "OverInfoCell")
    }
    
    @IBAction func onClickBackBtn(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: ViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func onClickInfoBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "MatchInfoVC") as! MatchInfoVC
        navigationController?.pushViewController(lc, animated: false)
    }
    
    @IBAction func onClickScorecardBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "ScorecardVC") as! ScorecardVC
        navigationController?.pushViewController(lc, animated: false)
    }
}

//MARK:- Tableview Delegate Datasource
extension OverInfoVC : UITableViewDelegate, UITableViewDataSource {
         
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let ovscoHeaderCell = tableView.dequeueReusableCell(withIdentifier: "OverScoreCell") as! OverScoreCell
        return ovscoHeaderCell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 180
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ovsInfoCell = tableView.dequeueReusableCell(withIdentifier: "OverInfoCell") as! OverInfoCell
    
        ovsInfoCell.selectionStyle = .none
        
        return ovsInfoCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 111
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ClickGallery")
    }
}
