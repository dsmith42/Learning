//
//  Binding-OnChange.swift
//  Learning
//
//  Created by Dan Smith on 27/01/2021.
//

import SwiftUI

extension Binding {
  func onChange(_ handler: @escaping () -> Void)  -> Binding<Value> {
    Binding(
      get: { self.wrappedValue },
      set: { newValue in
        self.wrappedValue = newValue
        handler()
      }
    )
  }
}
