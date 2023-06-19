//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Bảo Trần on 19/06/2023.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
