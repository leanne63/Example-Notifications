//
//  Model.swift
//  Example-Notifications
//
//  Created by leanne on 11/29/17.
//

import Foundation

class Model {
	
	// MARK: - Constants
	
	let notificationONEName = Notification.Name("NotificationONE")
	let notificationTWOName = Notification.Name("NotificationTWO")
	let notificationTHREEName = Notification.Name("NotificationTHREE")
	
	
	// MARK: - Observer-Related Methods
	
	func notifyObserversONE() {
		print("START \(Model.self).\(#function)")
		NotificationCenter.default.post(name: notificationONEName, object: self)
		print("END \(Model.self).\(#function)")
	}

	func notifyObserversTWO() {
		print("START \(Model.self).\(#function)")
		NotificationCenter.default.post(name: notificationTWOName, object: self)
		print("END \(Model.self).\(#function)")
	}

	func notifyObserversTHREE() {
		print("START \(Model.self).\(#function)")
		NotificationCenter.default.post(name: notificationTHREEName, object: self)
		print("END \(Model.self).\(#function)")
	}
}
