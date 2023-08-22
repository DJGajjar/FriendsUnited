//
//  TabViewController.swift
//  MassageRobot
//
//  Created by Augmenta on 05/03/21.
//

import UIKit

class TabViewController: UITabBarController {

    var customTabBarView = UIView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupTabBarUI()
//        self.addCustomTabBarView()
//               self.tabBar.cornerRadius = 42
//               self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
//
//               // Remove the line
//               if #available(iOS 13.0, *) {
//                   let appearance = self.tabBar.standardAppearance
//                   appearance.shadowImage = nil
//                   appearance.shadowColor = nil
//                   self.tabBar.standardAppearance = appearance
//               } else {
//                   self.tabBar.shadowImage = UIImage()
//                   self.tabBar.backgroundImage = UIImage()
//               }
    }
    
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           self.setupCustomTabBarFrame()
       }
       
       // MARK: Private methods
       
       private func setupCustomTabBarFrame() {
           let height = self.view.safeAreaInsets.bottom + 64
           
           var tabFrame = self.tabBar.frame
           tabFrame.size.height = height
           tabFrame.origin.y = self.view.frame.size.height - height
           
           self.tabBar.frame = tabFrame
           self.tabBar.setNeedsLayout()
           self.tabBar.layoutIfNeeded()
           customTabBarView.frame = tabBar.frame
       }
       
       private func setupTabBarUI() {
           // Setup your colors and corner radius
           self.tabBar.backgroundColor = UIColor.white
           self.tabBar.cornerRadius = 36
           self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
           self.tabBar.backgroundColor = .white
           self.tabBar.tintColor = .black
           self.tabBar.unselectedItemTintColor = UIColor.yellow
           
           // Remove the line
           if #available(iOS 13.0, *) {
               let appearance = self.tabBar.standardAppearance
               appearance.shadowImage = nil
               appearance.shadowColor = nil
               self.tabBar.standardAppearance = appearance
           } else {
               self.tabBar.shadowImage = UIImage()
               self.tabBar.backgroundImage = UIImage()
           }
       }
       
//       private func addCustomTabBarView() {
//           self.customTabBarView.frame = tabBar.frame
//
//           self.customTabBarView.backgroundColor = .systemPink
//           self.customTabBarView.layer.cornerRadius = 42
//           self.customTabBarView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
//
//           self.customTabBarView.layer.masksToBounds = false
//           self.customTabBarView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
//           self.customTabBarView.layer.shadowOffset = CGSize(width: -4, height: -6)
//           self.customTabBarView.layer.shadowOpacity = 0.5
//           self.customTabBarView.layer.shadowRadius = 20
//
//           self.view.addSubview(customTabBarView)
//           self.view.bringSubviewToFront(self.tabBar)
//       }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if let items = tabBar.items {
            items.enumerated().forEach { if $1 == item { print("your index is: \($0)") } }
        }
    }
}
