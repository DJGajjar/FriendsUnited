//
//  OldMatchViewController.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 28/06/21.
//

import UIKit

class OldMatchViewController: UIViewController {

    @IBOutlet weak var tblOldMatchList: UITableView!
    
    var countCell: Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tblOldMatchList.register(UINib(nibName: "MatchListCell", bundle: nil), forCellReuseIdentifier: "MatchListCell")
    }
}

extension OldMatchViewController : UITableViewDataSource, UITableViewDelegate{
    //MARK:- Table View Delegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MatchListCell = self.tblOldMatchList.dequeueReusableCell(withIdentifier: "MatchListCell") as! MatchListCell

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Did select cell")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if countCell < 50 {
            let height = scrollView.frame.size.height
            let contentYoffset = scrollView.contentOffset.y
            let distanceFromBottom = scrollView.contentSize.height - contentYoffset
            if distanceFromBottom < height {
                countCell = countCell + 10
                tblOldMatchList.reloadData()
            }
        }
    }
}
