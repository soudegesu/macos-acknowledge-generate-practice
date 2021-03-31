//
//  AppMenu.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import Cocoa

class AppMenu: NSMenu {
  
  private lazy var applicationName = ProcessInfo.processInfo.processName
  
  override init(title: String) {
    super.init(title: title)
    
    let menuItemOne = NSMenuItem()
    menuItemOne.submenu = NSMenu(title: "menuItemOne")
    menuItemOne.submenu?.items = [NSMenuItem(title: "Quit \(applicationName)", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")]
    items = [menuItemOne]
  }
  required init(coder: NSCoder) {
    super.init(coder: coder)
  }
}

extension NSMenuItem {
  convenience init(title string: String, target: AnyObject = self as AnyObject, action selector: Selector?, keyEquivalent charCode: String, modifier: NSEvent.ModifierFlags = .command) {
    self.init(title: string, action: selector, keyEquivalent: charCode)
    keyEquivalentModifierMask = modifier
    self.target = target
  }
  
  convenience init(title string: String, submenuItems: [NSMenuItem]) {
    self.init(title: string, action: nil, keyEquivalent: "")
    self.submenu = NSMenu()
    self.submenu?.items = submenuItems
  }
}
