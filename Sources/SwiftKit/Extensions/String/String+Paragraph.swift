//
//  String+Paragraph.swift
//  SwiftKit
//
//  Created by Daniel Saidi on 2021-11-29.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

public extension String {
    
    /**
     Backs to find the index of the first new line paragraph
     before the provided location, if any.
     
     A new paragraph is considered to start at the character
     after the newline char, not the newline itself.
     */
    func findIndexOfCurrentParagraph(from location: UInt) -> UInt {
        if isEmpty { return 0 }
        let count = UInt(count)
        var index = min(location, count-1)
        repeat {
            guard index > 0, index < count else { break }
            guard let char = character(at: index - 1) else { break }
            if char == .newLine || char == .carriageReturn { break }
            index -= 1
        } while true
        return max(index, 0)
    }
    
    /**
     Looks forward to find the next new line paragraph after
     the provided location, if any. If no next paragraph can
     be found, the current is returned.
     
     A new paragraph is considered to start at the character
     after the newline char, not the newline itself.
     */
    func findIndexOfNextParagraph(from location: UInt) -> UInt {
        var index = location
        repeat {
            guard let char = character(at: index) else { break }
            index += 1
            guard index < count else { break }
            if char == .newLine || char == .carriageReturn { break }
        } while true
        let found = index < count
        return found ? index : findIndexOfCurrentParagraph(from: location)
    }
}
