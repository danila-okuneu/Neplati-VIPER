//
//  SettingsInteractor.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 5.12.24.
//

// MARK: - Interactor Protocol
protocol SettingsInteractorProtocol: AnyObject {
	
	var presenter: SettingsPresenterProtocol? { get set }
	
}

protocol SettingsInteractorInputs: AnyObject {
	
	// Define input methods
}

protocol SettingsInteractorOutputs: AnyObject {
	
	// Define output methods
}

// MARK: - Interactor
final class SettingsInteractor: SettingsInteractorProtocol {
	
	weak var presenter: SettingsPresenterProtocol?
	
}

// MARK: - Input & Output
extension SettingsInteractor: SettingsInteractorInputs, SettingsInteractorOutputs {
	
	// Extend functionality
}


