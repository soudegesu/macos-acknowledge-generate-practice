//
//  Application.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import Cocoa
import Foundation
import SwiftUI

@objc(Application)
class Application: NSApplication {
  
  override func orderFrontStandardAboutPanel(options optionsDictionary: [NSApplication.AboutPanelOptionKey : Any] = [:]) {
      let panel = AboutPanel()
      panel.makeKeyAndOrderFront(nil)
  }
}
