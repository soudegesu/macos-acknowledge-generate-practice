//
//  AcknowledgementView.swift
//  macos-acknowledge-generate-practice
//
//  Created by soudegesu on 2021/03/31.
//

import WebKit
import SwiftUI

struct AcknowledgementView: NSViewRepresentable {
  
  var text: String
  
  typealias NSViewType = WKWebView
  
  func makeNSView(context: Context) -> WKWebView {
    WKWebView()
  }
  
  func updateNSView(_ nsView: WKWebView, context: Context) {
    nsView.loadHTMLString(text, baseURL: nil)
  }
}


struct AcknowledgementView_Previews: PreviewProvider {
    static var previews: some View {
      AcknowledgementView(text: "<html><body><h1>Hello World</h1></body></html>")
    }
}

