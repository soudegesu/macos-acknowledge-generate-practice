//
//  AcknowledgementPanel.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import Cocoa
import SwiftUI

class AcknowledgementPanel: NSPanel {

  override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {

    super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag)
    
    self.titleVisibility = .hidden
    self.titlebarAppearsTransparent = true
    self.becomesKeyOnlyIfNeeded = false

    let screenFrame = NSScreen.main!.frame
    let leftPoint = NSPoint(x: screenFrame.midX, y: screenFrame.maxY)
    self.setFrameTopLeftPoint(leftPoint)
    
    self.setContentSize(NSSize(width: 640, height: 480))
    
    let text = "<html><body><h1>Hello World</h1></body></html>"
    let acknowledge = AcknowledgementView(text: text)
    self.contentView = NSHostingView(rootView: acknowledge)
  }
  
}
