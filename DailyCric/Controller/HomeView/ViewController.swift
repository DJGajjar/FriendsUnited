//
//  ViewController.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 22/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblMatchList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tblMatchList.register(UINib(nibName: "MatchListCell", bundle: nil), forCellReuseIdentifier: "MatchListCell")
    }
    
}

extension ViewController : UITableViewDataSource, UITableViewDelegate, MatchListCellDelegate {
    //MARK:- Table View Delegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return self.bookingVM.getTrackerCount()
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MatchListCell = self.tblMatchList.dequeueReusableCell(withIdentifier: "MatchListCell") as! MatchListCell

        cell.delegate = self
        cell.intIndex = indexPath.row
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Did select cell")
    }
    
    func onClickMatchInfo(index: NSInteger) {
        let sb = UIStoryboard(name: "Home", bundle: nil)
        let lc = sb.instantiateViewController(withIdentifier: "MatchInfoVC") as! MatchInfoVC
        
        if index == 0 {
            lc.strSelectMtch = "Yes"
        }else {
            lc.strSelectMtch = "No"
        }
        
        navigationController?.pushViewController(lc, animated: true)
    }
}
