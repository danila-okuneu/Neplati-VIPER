//
//  SettingsView.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 5.12.24.
//

import UIKit

protocol SettingsViewProtocol: AnyObject {
	
	var presenter: SettingsPresenterProtocol? { get set }
}

protocol SettingsViewInputs: AnyObject {
	
	// Define input methods
}

protocol SettingsViewOutputs: AnyObject {
	
	// Define output methods
}

// MARK: - View
final class SettingsViewController: UIViewController, SettingsViewProtocol {
	
	var presenter: SettingsPresenterProtocol?
		
}

// MARK: - Input & Output
extension SettingsViewController: SettingsViewInputs, SettingsViewOutputs {
	
	// Extend functionality
}

