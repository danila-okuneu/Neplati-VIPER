//
//  TabBarViewController.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

import UIKit

// MARK: - Protocol
protocol TabBarViewProtocol: AnyObject {
	
	var presenter: TabBarPresenterProtocol? { get set }
}

protocol TabBarViewInput: AnyObject {
	
	func configureTabBar()
	func setupTabs()
}

protocol TabBarViewOutput: AnyObject {
	
	
}

// MARK: - View
final class TabBarViewController: UITabBarController, TabBarViewProtocol {
	
	private let ticketListModule = TicketListRouter.startModule()
	private let settingsModule = SettingsRouter.startModule()
	
	var presenter: TabBarPresenterProtocol?
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("TabBar presented")
		configureTabBar()
		setupTabs()
	}
}

// MARK: - Input & Output
extension TabBarViewController: TabBarViewInput, TabBarViewOutput {
	
	func configureTabBar() {
		
		tabBar.backgroundColor = .tabBarBackground
		tabBar.unselectedItemTintColor = .tabBarLightGray
		tabBar.tintColor = . white
		tabBar.layer.shadowColor = UIColor.tabBarSeparatorGray.cgColor
		tabBar.layer.shadowRadius = 0.01
		tabBar.layer.shadowOpacity = 1
	}
	
	func setupTabs() {
		
		ticketListModule.title = "Transport"
		ticketListModule.tabBarItem.image = UIImage(systemName: "bus")
		ticketListModule.tabBarItem.selectedImage = UIImage(systemName: "bus.fill")
		
		
		settingsModule.title = "Tickets"
		settingsModule.tabBarItem.image = UIImage(systemName: "ticket")
		settingsModule.tabBarItem.selectedImage = UIImage(systemName: "ticket.fill")

		
		setViewControllers(
			[
				UINavigationController(rootViewController: ticketListModule),
				UINavigationController(rootViewController: settingsModule)
			],
			animated: true
		)
	}
	
}
