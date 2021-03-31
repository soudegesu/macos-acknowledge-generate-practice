//
//  AcknowledgementView.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import WebKit
import SwiftUI

struct AcknowledgementView: NSViewRepresentable {
  
  var url: URL
  
  typealias NSViewType = WKWebView
  
  func makeNSView(context: Context) -> WKWebView {
    WKWebView()
  }
  
  func updateNSView(_ nsView: WKWebView, context: Context) {
    nsView.loadFileURL(url, allowingReadAccessTo: url)
  }
}


struct AcknowledgementView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        if let path = Bundle.main.path(forResource: "acknowledge", ofType: "html"),
           let localHTMLUrl = URL(fileURLWithPath: path, isDirectory: false) {
            AcknowledgementView(url: localHTMLUrl)
        }
      }
    }
}

