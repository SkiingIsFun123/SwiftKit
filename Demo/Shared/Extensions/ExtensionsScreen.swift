//
//  ExtensionsScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2020-12-07.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import SwiftUI
import SwiftUIKit

struct ExtensionsScreen: View {
 
    var body: some View {
        List {
            Section {
                ListText("""
SwiftKit contains a bunch of extensions that aim at making it easier to work with SwiftUI.
                    
Since this namespace contains a lot will grow over time, extensions are not demonstrated. Instead, checkout the source code.
""")
            }
        }.navigationTitle("Extension")
    }
}

struct ExtensionsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExtensionsScreen()
    }
}
