//
//  CustomTextField.swift
//  Brain Damage
//
//  Created by Marcelo de Araújo on 04/10/2023.
//

import UIKit

final class CustomTextField: UITextField {
    weak var numberMemoryEasyVC: NumberMemoryEasyViewController?
    weak var numberMemoryMediumVC: NumberMemoryMediumViewController?
    weak var numberMemoryHardVC: NumberMemoryHardViewController?
    weak var numberMemoryExtremeVC: NumberMemoryExtremeViewController?
    
    override public func deleteBackward() {
        super.deleteBackward()
        numberMemoryEasyVC?.deleteBackward(self)
        numberMemoryMediumVC?.deleteBackward(self)
        numberMemoryHardVC?.deleteBackward(self)
        numberMemoryExtremeVC?.deleteBackward(self)
    }
}
