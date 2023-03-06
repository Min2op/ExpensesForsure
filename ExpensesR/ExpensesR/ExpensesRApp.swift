//
//  ExpensesRApp.swift
//  ExpensesR
//
//  Created by user232479 on 3/5/23.
//

import SwiftUI
import FirebaseCore //import firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure() //Configure testing to see if we are connected to fire base

    return true
  }
}

@main
struct ExpensesRApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate //This creates an adapater for swift UI to connect to firebase
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
