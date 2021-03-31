//
//  AppToolbar.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import Cocoa

class AppToolbar: NSToolbar, NSToolbarDelegate {
  override init(identifier: NSToolbar.Identifier) {
    super.init(identifier: identifier)
    delegate = self
  }
  
  func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: NSToolbarItem.Identifier, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem? {
    return nil
  }
  
  func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
    return [.print, .showColors, .flexibleSpace,. space] // Whatever items you want to allow
  }
  
  func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
    return [.flexibleSpace, .showColors] // Whatever items you want as default
  }
}
