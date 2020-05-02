# HelloMacSwiftUIPython
This repo contains a minimal macOS SwiftUI app that calls python via 
[PythonKit](https://github.com/pvieito/PythonKit).

Specifically, the app imports numpy, makes an array, converts it to a python string,
converts that to a swift string, and then prints the result to the console.

This project can be used as a starting point for writing a SwiftUI macOS app
that uses python for calculations ans SwiftUI for the user interface.

To build and run yourself, you'll need to edit the environment variables in the target. 
Set `PYTHONHOME` to the location of your python distribution, and set 
`PYTHON_LIBRARY` to the path to your python library (e.g., 
`${PYTHONHOME}/lib/python*dylib`).
