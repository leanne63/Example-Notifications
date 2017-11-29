//
//  Model2.swift
//  Example-Notifications
//
//  Created by leanne on 11/29/17.
//

import Foundation

class Model2 {
	
	// MARK: - Observer-Related Methods
	
	func notifyObserversONE() {
		print("START \(Model2.self).\(#function)")
		NotificationCenter.default.post(name: NotificationName.someONEThingDidOccur, object: self)
		print("END \(Model2.self).\(#function)")
	}
	
	func notifyObserversTWO() {
		print("START \(Model2.self).\(#function)")
		NotificationCenter.default.post(name: NotificationName.someTWOThingDidOccur, object: self)
		print("END \(Model2.self).\(#function)")
	}
	
	func notifyObserversTHREE() {
		print("START \(Model2.self).\(#function)")
		NotificationCenter.default.post(name: NotificationName.someTHREEThingDidOccur, object: self)
		print("END \(Model2.self).\(#function)")
	}
}

