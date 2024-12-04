//
//  TicketListView.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

import UIKit

protocol TicketListViewProtocol: AnyObject {
	
	var presenter: TicketListPresenterInput? { get set }
	
}

protocol TicketListViewInput: AnyObject {
	
	
}

protocol TicketListViewOutput: AnyObject {
	
	
	
}

// MARK: - TicketList VC
final class TicketListViewController: UIViewController, TicketListViewProtocol {
	
	var presenter: TicketListPresenterInput?

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		view.backgroundColor = .background
	}
	
	
}

extension TicketListViewController: TicketListViewInput, TicketListViewOutput {
	
	
	
	
}


