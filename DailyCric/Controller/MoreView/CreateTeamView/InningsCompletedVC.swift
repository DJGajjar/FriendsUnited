//
//  InningsCompletedVC.swift
//  DailyCric
//
//  Created by Darshan Jolapara on 05/07/21.
//

import UIKit

class InningsCompletedVC: UIViewController {

    @IBOutlet weak var inningComView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        inningComView.layer.shadowColor = #colorLiteral(red: 1, green: 0.6, blue: 0.1333333333, alpha: 1)
        inningComView.layer.shadowOpacity = 0.8
        inningComView.layer.shadowOffset = .zero
        inningComView.layer.shadowRadius = 2.8
        inningComView.layer.cornerRadius = 10.0
    }
    
    @IBAction func onClickInningCompletedBtn(_ sender: Any) {
//        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
//        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 2], animated: true)
        self.navigationController?.popViewController(animated: false)
    }
}
