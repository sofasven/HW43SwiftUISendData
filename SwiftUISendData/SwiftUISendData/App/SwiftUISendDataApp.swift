//
//  SwiftUISendDataApp.swift
//  SwiftUISendData
//
//  Created by Sofa on 17.12.23.
//

import SwiftUI

@main
struct SwiftUISendDataApp: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
