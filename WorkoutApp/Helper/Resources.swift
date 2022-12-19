//
//  Resources.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 19.12.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        
        static var titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TapBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Setting"
        }
    }
    
    enum Images {
        enum TapBar {
            static var overview = UIImage(named: "overview_tap")
            static var session = UIImage(named: "session_tap")
            static var progress = UIImage(named: "progress_tap")
            static var settings = UIImage(named: "settings_tap")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
