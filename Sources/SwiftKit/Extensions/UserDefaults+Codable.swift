//
//  UserDefaults+Codable.swift
//  SwiftKit
//
//  Created by Daniel Saidi on 2020-09-23.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import Foundation

public extension UserDefaults {
    
    /**
     Returns the codable object associated with the provided
     key, provided that the persisted value can be decoded.
     */
    func codable<T: Codable>(forKey key: String) -> T? {
        guard let data = object(forKey: key) as? Data else { return nil }
        let value = try? JSONDecoder().decode(T.self, from: data)
        return value
    }
    
    /**
     Persist a codable item.
     */
    func setCodable<T: Codable>(_ codable: T, forKey key: String) {
        let data = try? JSONEncoder().encode(codable)
        set(data, forKey: key)
    }
}
