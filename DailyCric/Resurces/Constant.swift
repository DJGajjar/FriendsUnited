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
}

