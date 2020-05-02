//
//  ContentView.swift
//  SwiftPython
//
//  Created by Geoffrey Lovelace on 5/2/20.
//  Copyright © 2020 Geoffrey Lovelace. All rights reserved.
//

// Before building, I edited the scheme to set these environment variables:
//
// (you might use a different version of python)
// PYTHON_LIBRARY=/Users/geoffrey/.conda/envs/py37/lib/libpython3.7m.dylib
// PYTHONHOME=/Users/geoffrey/.conda/envs/py37/
//
// I also edited my app target: I disabled app sandboxing and also
// checked "Disable Library Validation"

import SwiftUI
import PythonKit
import Foundation

struct ContentView: View {
    var body: some View {
      VStack {
        Text("Hello, world!")
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        // Add
        Button(action: {
          // Minimal example: load numpy, store the result in a python
          // variable, convert back to a swift variable, then print the
          // result to the console
          let np = Python.import("numpy")
          let x: PythonObject = Python.str(np.arange(0,4,1))
          let result = String(x)!
          print("Numpy array: " + result)
        }) {
          Text("Test Python")
        }
        .padding(.bottom)
      }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
