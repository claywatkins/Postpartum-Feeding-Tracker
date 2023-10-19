//
//  String + Ext.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/19/23.
//

import Foundation

extension String {
    func substring(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
