//
//  TabBarViewController.swift
//  Neplati-VIPER
//
//  Created by Danila Okuneu on 4.12.24.
//

import UIKit

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
	
	var presenter: TabBarPresenterProtocol?
	
}

// MARK: - Input & Output
extension TabBarViewController: TabBarViewInput, TabBarViewOutput {
	
	func configureTabBar() {
		
	}
	
	func setupTabs() {
		
		
	}
	
}
