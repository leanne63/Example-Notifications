//
//  ViewController.swift
//  Example-Notifications
//
//  Created by leanne on 11/29/17.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Constants
	
	let notificationONEModelSelector = #selector(didReceiveNotificationONEFromModel)
	let notificationONEModel2Selector = #selector(didReceiveNotificationONEFromModel2)
	let notificationTWOSelector = #selector(didReceiveNotificationTWO)
	let notificationTHREESelector = #selector(didReceiveNotificationTHREE)
	

	// MARK: - Properties
	
	let model = Model()
	let model2 = Model2()
	
	
	// MARK: - Lifecycle Overrides
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		subscribeToNotifications()
		print("-----")
		model.notifyObserversONE()
		print("-----")
		model.notifyObserversTWO()
		print("-----")
		model2.notifyObserversONE()
		print("-----")
		model2.notifyObserversTWO()
		print("-----")
	}
	
	
	// MARK: - Observer-Related Methods
	
	func subscribeToNotifications() {
		// This observer request wants ONLY matching notifications from the model (object: model)
		NotificationCenter.default.addObserver(self,
											   selector: notificationONEModelSelector,
											   name: NotificationName.someONEThingDidOccur,
											   object: model)
		
		// This observer request wants ONLY matching notifications from the second model (object: model2)
		NotificationCenter.default.addObserver(self,
											   selector: notificationONEModel2Selector,
											   name: NotificationName.someONEThingDidOccur,
											   object: model2)
		
		// The following observer requests will accept their notifications from any object (object: nil)
		NotificationCenter.default.addObserver(self,
											   selector: notificationTWOSelector,
											   name: NotificationName.someTWOThingDidOccur,
											   object: nil)

		NotificationCenter.default.addObserver(self,
											   selector: notificationTHREESelector,
											   name: NotificationName.someTHREEThingDidOccur,
											   object: nil)
	}
	
	@objc func didReceiveNotificationONEFromModel(notification: Notification) {
		print("START \(ViewController.self).\(#function)")
		exampleUtilityFunction()
		print("END \(ViewController.self).\(#function)")
	}
	
	@objc func didReceiveNotificationONEFromModel2(notification: Notification) {
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

