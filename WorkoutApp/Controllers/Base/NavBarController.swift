//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Денис Литвин on 19.12.2022.
//

import UIKit

final class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: Resources.Colors.titleGray,
                                                                .font: Resources.Fonts.helveticaRegular(with: 17)]
        navigationBar.addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
}
