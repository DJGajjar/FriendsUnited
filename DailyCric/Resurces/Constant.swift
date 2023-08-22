//
//  Constant.swift
//  Geoscout
//
//  Created by Augmenta on 19/07/20.
//  Copyright © 2020 Augmenta. All rights reserved.
//

import Foundation
import UIKit

let SHARED_APPDELEGATE = AppDelegate().sharedAppDelegate()

// MARK: - NSUSERDEFAULT KEY Name
let ISSHOWLANDINGPAGE = "isShowLanding"
let USERTYPE = "UserType"


// MARK: - Response Parameter
let POSTREQ = "POST"
let GETREQ = "GET"
let PUTREQ = "PUT"
let GetOkValue = "ok"

// MARK:- Screen size
//let screenSize = UIScreen.main.bounds
//let screenWidth = screenSize.width
//let screenHeight = screenSize.height

let ISLOGIN = "isLogin"
let ISHOMEPAGE = "isHomePage"
let USERID = "userID"
let USERNAME = "UserName"
let ROUTINGUSERID = "routingUserID"
let QueAns = "queans"
let ISANSUPLOAD = "IsAnsUpload"
let LTOOL = "LTool"
let RTOOL = "RTool"
let LPATH = "LPath"
let RPATH = "RPath"
let LLOCATION = "LLocation"
let RLOCATION = "RLocation"
let EXTIME = "ExTime"
let SEGMENTSTART = "SegmentStart"
let SEGMENTEND = "SegmentEnd"
let RULERWIDTH = "RulerWidth"
let SEGMENTCOUNT = "SegmentCount"

public var strBaseAPI = ""

// MARK:- API Listing
struct ApiUrls {

    static let baseURL = "https://massage-robotics-website.uc.r.appspot.com"
    
    static let SignUpsubUrl = "/wt?tablename=Userdata&row="
    static let loginsubUrl = "/rd?query='Select u.*, p.thumbnail from Userdata as u left join Userprofile as p on u.userid = p.userid Where"
}

struct TextfieldPlaceholderString {
    
    static let string = TextfieldPlaceholderString()
    
    let provideBDay = "DD"
    let provideBMonth = "MM"
    let provideBYear = "YYYY"
    
    let provideFriendName = "Name of your friend"
}

// MARK: - Api manager class object
//let APIManagerObj = APIManager.sharedInstance()

extension UIColor {
    @nonobjc class var appNavColor: UIColor {
        return UIColor(red: 11.0 / 255.0, green: 2.0 / 255.0, blue: 47.0 / 255.0, alpha: 1.0)
    }
    @nonobjc class var appIconColor: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 153.0 / 255.0, blue: 34.0 / 255.0, alpha: 1.0)
    }
    @nonobjc class var btnSelectColor: UIColor {
        return UIColor(red: 128.0 / 255.0, green: 194.0 / 255.0, blue: 213.0 / 255.0, alpha: 1.0)
    }
    @nonobjc class var SegmentCountBGColor: UIColor {
        return UIColor(red: 4.0 / 255.0, green: 39.0 / 255.0, blue: 113.0 / 255.0, alpha: 1.0)
    }
    @nonobjc class var TabBarBGColor: UIColor {
        return UIColor(red: 17.0 / 255.0, green: 146.0 / 255.0, blue: 241.0 / 255.0, alpha: 1.0)
    }
    @nonobjc class var appThemeColor: UIColor {
        return UIColor(red: 86.0 / 255.0, green: 156.0 / 255.0, blue: 216.0 / 255.0, alpha: 1.0)
    }
}

class ColorsGradient {
    var gl:CAGradientLayer!

    init() {
        let colorTop = UIColor(red: 192.0 / 255.0, green: 38.0 / 255.0, blue: 42.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 35.0 / 255.0, green: 2.0 / 255.0, blue: 2.0 / 255.0, alpha: 1.0).cgColor

        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}

@IBDesignable class ThreeColorsGradientView: UIView {
    @IBInspectable var firstColor: UIColor = UIColor.orange
    @IBInspectable var secondColor: UIColor = UIColor.white
    @IBInspectable var thirdColor: UIColor = UIColor.green

    @IBInspectable var vertical: Bool = true {
        didSet {
            updateGradientDirection()
        }
    }

    lazy var gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        layer.startPoint = CGPoint.zero
        return layer
    }()

    //MARK: -

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        applyGradient()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        applyGradient()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applyGradient()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        updateGradientFrame()
    }

    //MARK: -

    func applyGradient() {
        updateGradientDirection()
        layer.sublayers = [gradientLayer]
    }

    func updateGradientFrame() {
        gradientLayer.frame = bounds
    }

    func updateGradientDirection() {
        gradientLayer.endPoint = vertical ? CGPoint(x: 0, y: 1) : CGPoint(x: 1, y: 0)
    }
}

