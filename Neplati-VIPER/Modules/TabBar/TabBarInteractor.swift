//
//  TabBarOutput.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

// MARK: - Interactor Protocol
protocol TabBarInteractorProtocol: AnyObject {
	
	var presenter: TabBarPresenterProtocol? { get set }
	
}

protocol TabBarInteractorInputs: AnyObject {
	
	// Define input methods
}

protocol TabBarInteractorOutputs: AnyObject {
	
	// Define output methods
}

// MARK: - Interactor Implementation
final class TabBarInteractor: TabBarInteractorProtocol {
	
	weak var presenter: TabBarPresenterProtocol?
	
}

// MARK: - Input & Output
extension TabBarInteractor: TabBarInteractorInputs, TabBarInteractorOutputs {
	
	// Extend functionality
}


