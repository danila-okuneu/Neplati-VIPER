//
//  TicketListInteractor.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

protocol TicketListInteractorProtocol: AnyObject {
	
	var presenter: TicketListPresenter? { get set }
	
}

protocol TicketListInteractorInput: AnyObject {
	
	
}

protocol TicketListInteractorOutput: AnyObject {
	
	
}

// MARK: - Interactor
final class TicketListInteractor: TicketListInteractorProtocol {
	
	weak var presenter: TicketListPresenter?
	
	
}



