//
//  MoreViewController.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 01/07/21.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var tblSettingList: UITableView!
    
    let arrMoreList = ["Create Team", "Edit Profile", "Player Info Show", "All Player Info", "Last Month Top 10", "Chat", "Contact Us", "Logout"]
    let arrListImg = ["TeamIcon", "EditProfile", "PlayerInfo", "AllPlayerInfo", "TopPlayer", "ChatIcon", "ContactUs", "LogOut"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tblSettingList.register(UINib(nibName: "MoreListCell", bundle: nil), forCellReuseIdentifier: "MoreListCell")
    }
}

extension MoreViewController : UITableViewDataSource, UITableViewDelegate, MoreListCellDelegate {
    //MARK:- Table View Delegate

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMoreList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MoreListCell = self.tblSettingList.dequeueReusableCell(withIdentifier: "MoreListCell") as! MoreListCell

        cell.lblTitle.text = arrMoreList[indexPath.row]
        cell.imgIcon.image = UIImage(named: arrListImg[indexPath.row])
        
        cell.delegate = self
        cell.intIndex = indexPath.row
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Did select cell")
    }
    
    func onClickAction(index: NSInteger) {
        
        let isLogin: String = UserDefaults.standard.object(forKey: ISLOGIN) as? String ?? "No"
        
        if isLogin == "Yes" {
            
            if index == 0 {
                let sb = UIStoryboard(name: "More", bundle: nil)
                let lc = sb.instantiateViewController(withIdentifier: "CreateTeamVC") as! CreateTeamVC
                navigationController?.pushViewController(lc, animated: true)
            }else if index == 1 {
                let sb = UIStoryboard(name: "More", bundle: nil)
                let lc = sb.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
                navigationController?.pushViewController(lc, animated: true)
            }else if index == 2 {
                let sb = UIStoryboard(name: "More", bundle: nil)
                let lc = sb.instantiateViewController(withIdentifier: "PlayerInfoDetailVC") as! PlayerInfoDetailVC
                navigationController?.pushViewController(lc, animated: true)
            }else if index == 3 {
                let sb = UIStoryboard(name: "More", bundle: nil)
                let lc = sb.instantiateViewController(withIdentifier: "AllPlayerListVC") as! AllPlayerListVC
                navigationController?.pushViewController(lc, animated: true)
            }else if index == 4 {
                let sb = UIStoryboard(name: "More", bundle: nil)
                let lc = sb.instantiateViewController(withIdentifier: "TopPlayerVC") as! TopPlayerVC
                navigationController?.pushViewController(lc, animated: true)
            }else if index == 5 {
                
            }else if index == 6 {
                
            }else if index == 7 {
                UserDefaults.standard.set("No", forKey: ISLOGIN)
                let alert = UIAlertController(title: "", message: "LogOut Sucessfully", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }else {
            if index == 7 {
                let alert = UIAlertController(title: "", message: "LogOut Sucessfully", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }else {
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let lc = sb.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
                navigationController?.pushViewController(lc, animated: true)
            }
        }
    }
}
