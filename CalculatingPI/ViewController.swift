//
//  ViewController.swift
//  CalculatingPI
//
//  Created by spychatter mx on 1/25/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import UIKit

typealias PiForm = (pi: Double, denominator: Double, operation: Double)

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let result  = calculatePI(nTerms: 1)
		print(result)
	}
	
	func calculatePI(nTerms: UInt) -> Double{
		let result = (Array(0..<nTerms).reduce(PiForm(pi:0, denominator: 1, operation: -1)){ acc, _ in
			return PiForm(pi: acc.pi + acc.operation * (4 / acc.denominator), denominator: acc.denominator + 2, operation: acc.operation * -1 )
		}).pi
		return abs(result)
	}


}

