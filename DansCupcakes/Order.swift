//
//  Order.swift
//  DansCupcakes
//
//  Created by Dan Payne on 2/13/22.
//

import SwiftUI

class Order: ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
        if specialRequestEnabled == false {
            extraFrosting = false
            addSprinkles = false
        }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var state = ""
    @Published var zip = ""
    
    var hasValidAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || state.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
    
}
