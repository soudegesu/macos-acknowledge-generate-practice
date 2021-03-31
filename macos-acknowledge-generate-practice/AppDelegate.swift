//
//  AppDelegate.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/21.
//

import Cocoa
import SwiftUI
import PreferencePanes

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var window: NSWindow!
  
  let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    let contentView = ContentView()

    window = NSWindow(
        contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
        styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
        backing: .buffered, defer: false)
    window.isReleasedWhenClosed = false
    window.center()
    window.setFrameAutosaveName("Main Window")
    window.contentView = NSHostingView(rootView: contentView)
    window.makeKeyAndOrderFront(nil)
          
    window?.toolbar = AppToolbar(identifier: .init("Default"))
    
    NSApp.mainMenu = AppMenu()
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

}

