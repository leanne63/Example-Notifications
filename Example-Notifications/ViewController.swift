//
//  ViewController.swift
//  Example-Notifications
//
//  Created by leanne on 11/29/17.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Constants
	let notificationONESelector = #selector(didReceiveNotificationONE)
	let notificationTWOSelector = #selector(didReceiveNotificationTWO)
	let notificationTHREESelector = #selector(didReceiveNotificationTHREE)

	// MARK: - Properties
	
	let model = Model()
	
	
	// MARK: - Lifecycle Overrides
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		subscribeToNotifications()
		model.notifyObserversONE()
		model.notifyObserversTWO()
	}
	
	
	// MARK: - Observer-Related Methods
	
	func subscribeToNotifications() {
		NotificationCenter.default.addObserver(self,
											   selector: notificationONESelector,
											   name: model.notificationONEName,
											   object: model)
		
		NotificationCenter.default.addObserver(self,
											   selector: notificationTWOSelector,
											   name: model.notificationTWOName,
											   object: nil)

		NotificationCenter.default.addObserver(self,
											   selector: notificationTHREESelector,
											   name: model.notificationTHREEName,
											   object: nil)
	}
	
	@objc func didReceiveNotificationONE(notification: Notification) {
		print("START \(ViewController.self).\(#function)")
		exampleUtilityFunction()
		print("END \(ViewController.self).\(#function)")
	}
	
	@objc func didReceiveNotificationTWO(notification: Notification) {
		print("START \(ViewController.self).\(#function)")
		exampleUtilityFunction()
		print("END \(ViewController.self).\(#function)")
	}
	
	@objc func didReceiveNotificationTHREE(notification: Notification) {
		print("START \(ViewController.self).\(#function)")
		exampleUtilityFunction()
		print("END \(ViewController.self).\(#function)")
	}
	
	
	// MARK: - Utility Functions
	
	func exampleUtilityFunction() {
		print("START \(ViewController.self).\(#function)")
		print("END \(ViewController.self).\(#function)")
	}


}

