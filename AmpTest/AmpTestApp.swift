//
//  AmpTestApp.swift
//  AmpTest
//
//  Created by Wayne Kelly on 2/10/2023.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct AmpTestApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Successful")
        } catch {
            print("Fail", error)
        }
    }
}
