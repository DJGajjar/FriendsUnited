//
//  ScorecardVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 10/07/21.
//

import UIKit

class ScorecardVC: UIViewController {
    
    @IBOutlet weak var tblScoreDetail: UITableView!
    
    var strSelectMtch: String!
    
    var strOpenSection : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tblScoreDetail.register(UINib(nibName: "SCTeamPlayerCell", bundle: nil), forCellReuseIdentifier: "SCTeamPlayerCell")
        self.tblScoreDetail.register(UINib(nibName: "SCHeaderView", bundle: nil), forCellReuseIdentifier: "SCHeaderView")
        
        tblScoreDetail.estimatedRowHeight = 60
        tblScoreDetail.estimatedSectionHeaderHeight = 30
        tblScoreDetail.rowHeight = UITableView.automaticDimension
        tblScoreDetail.sectionHeaderHeight = UITableView.automaticDimension
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
    
    @IBAction func onClickOverBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "OverInfoVC") as! OverInfoVC
        lc.strSelectMtch = strSelectMtch
        navigationController?.pushViewController(lc, animated: false)
    }
}

//MARK:- Tableview Delegate Datasource
extension ScorecardVC : UITableViewDelegate, UITableViewDataSource, SCHeaderViewDelegate {
         
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let scHeaderCell = tableView.dequeueReusableCell(withIdentifier: "SCHeaderView") as! SCHeaderView
        
        scHeaderCell.delegate = self
        scHeaderCell.intIndex = section
                
        
        if section == 0 {
            scHeaderCell.lblTeamName.text = "Team_1"
            
            let strOverCount = String(format: "(16.0 ov)")
            let atbStringOne = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 16), NSAttributedString.Key.foregroundColor : UIColor.appIconColor]
            let atbStringTwo = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 12), NSAttributedString.Key.foregroundColor : UIColor.appIconColor]
            let attributedStringOne = NSMutableAttributedString(string: "100-8 ", attributes:atbStringOne as [NSAttributedString.Key : Any])
            let attributedStringTwo = NSMutableAttributedString(string: strOverCount, attributes:atbStringTwo as [NSAttributedString.Key : Any])

            attributedStringOne.append(attributedStringTwo)
            
            scHeaderCell.lblTeamScore.attributedText = attributedStringOne
            
            if self.strOpenSection == "One" {
                UIView.animate(withDuration: 0.3, animations: {
                    scHeaderCell.imgDropDown.transform = CGAffineTransform.identity.rotated(by: 180 * CGFloat(Double.pi))
                    scHeaderCell.imgDropDown.transform = CGAffineTransform.identity.rotated(by: -1 * CGFloat(Double.pi))
                })
            }
        }else {
            scHeaderCell.lblTeamName.text = "Team_2"
            
            let strOverCount = String(format: "(14.5 Ov)")
            let atbStringOne = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 16), NSAttributedString.Key.foregroundColor : UIColor.appIconColor]
            let atbStringTwo = [NSAttributedString.Key.font : UIFont(name: "OpenSans-SemiBold", size: 12), NSAttributedString.Key.foregroundColor : UIColor.appIconColor]
            let attributedStringOne = NSMutableAttributedString(string: "98-10 ", attributes:atbStringOne as [NSAttributedString.Key : Any])
            let attributedStringTwo = NSMutableAttributedString(string: strOverCount, attributes:atbStringTwo as [NSAttributedString.Key : Any])

            attributedStringOne.append(attributedStringTwo)
            
            scHeaderCell.lblTeamScore.attributedText = attributedStringOne
            
            if self.strOpenSection == "Two" {
                UIView.animate(withDuration: 0.3, animations: {
                    scHeaderCell.imgDropDown.transform = CGAffineTransform.identity.rotated(by: 180 * CGFloat(Double.pi))
                    scHeaderCell.imgDropDown.transform = CGAffineTransform.identity.rotated(by: -1 * CGFloat(Double.pi))
                })
            }
        }
        
        return scHeaderCell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if self.strOpenSection == "" {
            return 0
        }else {
            if self.strOpenSection == "One" {
                if section == 0 {
                    return 1
                }else {
                    return 0
                }
            }else {
                if section == 0 {
                    return 0
                }else {
                    return 1
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let PlayerInfoCell = tableView.dequeueReusableCell(withIdentifier: "SCTeamPlayerCell") as! SCTeamPlayerCell
                
        PlayerInfoCell.selectionStyle = .none
        
        return PlayerInfoCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        (44 * 6) + (30 * 4)  + 560 //+ estimatedHeightOfLabel(text: "sdg dsfg sdfg sdf g") + extra + total
        //return UITableView.automaticDimension
    }
    
//    func estimatedHeightOfLabel(text: String) -> CGFloat {
//
//        let size = CGSize(width: view.frame.width - 16, height: 1000) // change width
//
//        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
//
//        let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 10)] // change font and size
//
//        let rectangleHeight = String(text).boundingRect(with: size, options: options, attributes: attributes, context: nil).height
//
//        return rectangleHeight
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ClickGallery")
    }

    func onClickExpandColaps(index: NSInteger) {
        print("SectionClick:::::: \(index)")
        
        if index == 0 {
            if self.strOpenSection == "One" {
                self.strOpenSection = ""
            }else {
                self.strOpenSection = "One"
            }
        }else {
            if self.strOpenSection == "Two" {
                self.strOpenSection = ""
            }else {
                self.strOpenSection = "Two"
            }
        }
        
        tblScoreDetail.reloadData()
    }
}
