//
//  MainTabBarRouter.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

import UIKit

protocol TabBarRouterProtocol: AnyObject {
	
	var entry: UIViewController? { get }
	
}

protocol TabBarRouterOutputs: AnyObject {
	
	static func start() -> UIViewController
	
}


final class TabBarRouter: TabBarRouterProtocol, TabBarRouterOutputs {
	var entry: UIViewController?
	
	
	static func start() -> UIViewController {
		
		let view = TabBarViewController(nibName: nil, bundle: nil)
		let interactor = TabBarInteractor()
		let presenter = TabBarPresenter(view: view, interactor: interactor)
		
		view.presenter = presenter
		interactor.presenter = presenter
		
		return view
	}
	
	
	
}


