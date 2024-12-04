//
//  TabBarPresenter.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

// MARK: - Presenter Protocol
protocol TabBarPresenterProtocol: AnyObject {
	
	var view: TabBarViewProtocol? { get set }
	var interactor: TabBarInteractorProtocol? {get set }
	
}

protocol TabBarPresenterInputs: AnyObject {
	
	// Define input methods
}

protocol TabBarPresenterOutputs: AnyObject {
	
	// Define output methods
}

// MARK: - Presenter
final class TabBarPresenter: TabBarPresenterProtocol {
	
	weak var view: TabBarViewProtocol?
	var interactor: TabBarInteractorProtocol?
	
	init(view: TabBarViewProtocol?, interactor: TabBarInteractorProtocol?) {
		self.view = view
		self.interactor = interactor
	}
	
}

// MARK: - Input & Output
extension TabBarPresenter: TabBarPresenterInputs, TabBarPresenterOutputs {
	
	// Extend functionality
}
