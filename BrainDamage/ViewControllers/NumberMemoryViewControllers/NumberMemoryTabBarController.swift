//
//  NumberMemoryTabBarController.swift
//  Brain Damage
//
//  Created by Marcelo de Araújo on 04/10/2023.
//

import UIKit

final class NumberMemoryTabBarController: UITabBarController {
    @IBAction func resetAction(_ sender: UIBarButtonItem) {
        if let selectedVC = selectedViewController {
            switch selectedVC {
            case let numberMemoryEasyVC as NumberMemoryEasyViewController:
                numberMemoryEasyVC.restartAlert()
            case let numberMemoryMediumVC as NumberMemoryMediumViewController:
                numberMemoryMediumVC.restartAlert()
            case let numberMemoryHardVC as NumberMemoryHardViewController:
                numberMemoryHardVC.restartAlert()
            case let numberMemoryExtremeVC as NumberMemoryExtremeViewController:
                numberMemoryExtremeVC.restartAlert()
            default:
                break
            }
        }
    }
}
