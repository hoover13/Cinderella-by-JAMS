//
//  Cinderella_by_JAMSApp.swift
//  Cinderella by JAMS
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

@main
struct Cinderella_by_JAMSApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(ChapterUnlocker())
        }
    }
}
