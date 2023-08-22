//
//  TopPlayerVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 02/07/21.
//

import UIKit

class TopPlayerVC: UIViewController {

    @IBOutlet weak var tblTopTenPlayerList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tblTopTenPlayerList.register(UINib(nibName: "PlayerListCell", bundle: nil), forCellReuseIdentifier: "PlayerListCell")
    }
}

extension TopPlayerVC : UITableViewDataSource, UITableViewDelegate, PlayerListCellDelegate{
    //MARK:- Table View Delegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PlayerListCell = self.tblTopTenPlayerList.dequeueReusableCell(withIdentifier: "PlayerListCell") as! PlayerListCell

        cell.delegate = self
        cell.intIndex = indexPath.row
        
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
