//
//  AboutPanel.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import Cocoa
import SwiftUI

class AboutPanel: NSPanel {

  override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {

    super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag)
    
    self.titleVisibility = .hidden
    self.titlebarAppearsTransparent = true
    self.becomesKeyOnlyIfNeeded = false

    let screenFrame = NSScreen.main!.frame
    let leftPoint = NSPoint(x: screenFrame.midX, y: screenFrame.maxY)
    self.setFrameTopLeftPoint(leftPoint)
    
    self.contentView = NSHostingView(rootView: AboutPage())
  }
  
}

struct AboutPage: View {
  
  @State var text = "<html><body><h1>Hello World</h1></body></html>"
  
  var body: some View {
    VStack(spacing: 10) {
      Button(action: {
        AcknowledgementPanel().makeKeyAndOrderFront(nil)
      }, label: {
        Text("Acknowledgements")
      })
    }
  }
}
