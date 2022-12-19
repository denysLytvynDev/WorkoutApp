//
//  TapBarController.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 19.12.2022.
//

import UIKit

enum Taps: Int {
    case overview
    case session
    case progress
    case settings
}

final class TapBarController: UITabBarController {
        
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)

        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TapBar.overview,
                                                     image: Resources.Images.TapBar.overview,
                                                     tag: Taps.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TapBar.session,
                                                     image: Resources.Images.TapBar.session,
                                                     tag: Taps.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TapBar.progress,
                                                     image: Resources.Images.TapBar.progress,
                                                     tag: Taps.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TapBar.settings,
                                                     image: Resources.Images.TapBar.settings,
                                                     tag: Taps.settings.rawValue)
        
        setViewControllers([overviewNavigation,
                            progressNavigation,
                            sessionNavigation,
                            settingsNavigation
        ], animated: false)
    }
}
