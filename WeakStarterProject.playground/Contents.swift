// Copyright (c) 2020 Apinun Wongintawang Authorize
// See Copyright Notice page for details about the license.

import Foundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


open class MarvelObject {
  
  public var name: String
  
  public init(_ name: String) {
    self.name = name
    print("🐣 Marvel init   \(name)")
  }
  
  deinit {
    print("☠️ Marvel deinit \(name)")
  }
}

do {
  MarvelObject("Ironman")
}
