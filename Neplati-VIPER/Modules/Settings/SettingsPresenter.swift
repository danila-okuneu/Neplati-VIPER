//
//  SettingsPresenter.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 5.12.24.
//

// MARK: - Presenter Protocol
protocol SettingsPresenterProtocol: AnyObject {
	
	var view: SettingsViewProtocol? { get set }
	var interactor: SettingsInteractorProtocol? {get set }
	
}

protocol SettingsPresenterInputs: AnyObject {
	
	// Define input methods
}

protocol SettingsPresenterOutputs: AnyObject {
	
	// Define output methods
}

// MARK: - Presenter
final class SettingsPresenter: SettingsPresenterProtocol {
	
	weak var view: SettingsViewProtocol?
	var interactor: SettingsInteractorProtocol?
	
	init(view: SettingsViewProtocol?, interactor: SettingsInteractorProtocol?) {
		self.view = view
		self.interactor = interactor
	}
	
}

// MARK: - Input & Output
extension SettingsPresenter: SettingsPresenterInputs, SettingsPresenterOutputs {
	
	// Extend functionality
}

