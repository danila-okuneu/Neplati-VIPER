//
//  SettingsRouter.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 5.12.24.
//

import UIKit

// MARK: - Protocol
protocol SettingsRouterProtocol: AnyObject {
	
	var entry: UIViewController? { get }
	
}

protocol SettingsRouterOutputs: AnyObject {
	
	static func startModule() -> UIViewController
	
}

// MARK: - Router
final class SettingsRouter: SettingsRouterProtocol, SettingsRouterOutputs {
	var entry: UIViewController?
	
	
	static func startModule() -> UIViewController {
		
		let view = SettingsViewController(nibName: nil, bundle: nil)
		let interactor = SettingsInteractor()
		let presenter = SettingsPresenter(view: view, interactor: interactor)
		
		view.presenter = presenter
		interactor.presenter = presenter
		
		return view
	}
}

