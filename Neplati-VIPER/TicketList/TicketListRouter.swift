//
//  TicketListRouter.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

import UIKit

protocol TicketListRouterProtocol: AnyObject {
	
	static func startModule() -> UIViewController

}


final class TicketListRouter: TicketListRouterProtocol {
	
	static func startModule() -> UIViewController {
		
		let view = TicketListViewController(nibName: nil, bundle: nil)
		let interactor = TicketListInteractor()
		let presenter = TicketListPresenter(view: view, interactor: interactor)
		
		view.presenter = presenter
		interactor.presenter = presenter
		
		return view
	}
	
}
