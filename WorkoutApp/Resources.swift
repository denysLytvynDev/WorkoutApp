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
        static var secondary = UIColor(hexString: "#F0F3FF")
        
        static var titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Setting"
                }
            }
        }
        
        enum Overview {
            static var workoutsButton = "All Workouts"
        }
    }
    
    enum Images {
        enum TapBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tap")
                case .session: return UIImage(named: "session_tap")
                case .progress: return UIImage(named: "progress_tap")
                case .settings: return UIImage(named: "settings_tap")
                }
            }
            
            static var overview = UIImage(named: "overview_tap")
            static var session = UIImage(named: "session_tap")
            static var progress = UIImage(named: "progress_tap")
            static var settings = UIImage(named: "settings_tap")
        }
        
        enum Common {
            static var downaArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
