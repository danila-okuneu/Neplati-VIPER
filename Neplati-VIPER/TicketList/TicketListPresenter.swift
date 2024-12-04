//
//  TicketListPresenter.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

import UIKit

protocol TicketListPresenterProtocol: AnyObject {
	
	var view: TicketListViewProtocol? { get set }
	var interactor: TicketListInteractorProtocol? { get set }
	var router: TicketListRouterProtocol? { get set }
}

protocol TicketListPresenterInput: AnyObject {
	
	
}

protocol TicketListPresenterOutput: AnyObject {
	
	
}

// MARK: - Presenter
final class TicketListPresenter: TicketListPresenterProtocol {
	
	weak var view: TicketListViewProtocol?
	var interactor: TicketListInteractorProtocol?
	var router: TicketListRouterProtocol?
	
	init(view: TicketListViewProtocol, interactor: TicketListInteractorProtocol) {
		self.view = view
		self.interactor = interactor
	}
	
}

// MARK: - Inputs & Outputs
extension TicketListPresenter: TicketListPresenterInput, TicketListPresenterOutput {
	
	
	
	
}
