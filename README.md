## Learning Swift
The projects about learning and testing Swift:
* Compile with CMake.
* Mix with C/C++

### How to Run
```
cmake -B build 
cmake --build build --target <target>
```

### Subdirectory
* 3_CallingCpp: Call a function in the c library from Swift.
* 4_CalledByCpp: Call a function in the Swift library frim C++.
* 5_Window: Open a Cocona NSWindow programmatically.
* 6_WindowByCpp:
    * A Swift library to open NSWindow.
    * And call the `RunNSApp()` function from C++.
    * Add key event handler.