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

class AvengerTeamObject: MarvelObject {
    var stones: [StoneObjcet] = []
    
    init(name: String, stones: [StoneObjcet]) {
        self.stones = stones
        super.init(name)
        self.name = name
        
        self.stones.forEach {
          $0.ownerTeam = self
        }
    }
}

class StoneObjcet: MarvelObject {
    //Weak
    weak var ownerTeam: MarvelObject?
}

do {
    let stonesName = ["Space Stone", "Soul Stone", "Reality Stone", "Time Stone", "Power Stone"]
    var stones = stonesName.map({StoneObjcet($0)})
    var captainTeam = AvengerTeamObject(name: "Team Captain", stones: stones)
    print(captainTeam.name, "is alive!")
}
