//
//  Sequence+Batch.swift
//  SwiftKit
//
//  Created by Daniel Saidi on 2017-05-10.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import Foundation

public extension Sequence {
  
    /**
     Batch the sequence into groups of a certain batch size.
     */
    func batched(withBatchSize size: Int) -> [[Element]] {
        var result: [[Element]] = []
        var batch: [Element] = []
        
        forEach {
            batch.append($0)
            if batch.count == size {
                result.append(batch)
                batch = []
            }
        }
        
        if !batch.isEmpty {
            result.append(batch)
        }
        
        return result
    }
}
