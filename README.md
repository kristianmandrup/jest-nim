# Jest.nim

This library aims to provide [Jest](https://github.com/ReactiveX/RxJS) bindings for
Nim (Work In Progress)

The following [global Jest API methods](https://jestjs.io/docs/en/api.html) have bindings:

```nim
proc afterAll*(fn: proc(args:varargs[auto]))
proc afterAll*(fn: proc(args:varargs[auto]), timeout: cint)

proc afterEach*(fn: proc(args: varargs[auto]))
proc afterEach*(fn: proc(args: varargs[auto]), timeout: cint)

proc beforeAll*(fn: proc(args: varargs[auto]))
proc beforeAll*(fn: proc(args: varargs[auto]), timeout: cint)

proc beforeEach*(fn: proc(args: varargs[auto]))
proc beforeEach*(fn: proc(args: varargs[auto]), timeout: cint)

proc describe*(name: cstring, fn: proc(args: varargs[auto]))
proc test*(name: cstring, fn: proc(args: varargs[auto]))
proc test*(name: cstring, fn: proc(args: varargs[auto]), timeout: cint)

proc describeEach*(table: auto, name: cstring, fn: proc(args: varargs[auto]))
proc describeEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint))
  
proc describeOnly*(name: cstring, fn: proc(args: varargs[auto]))

proc describeOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto]))

proc describeOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint))

proc describeSkip*(name: cstring, fn: proc(args: varargs[auto]))

proc describeSkipEach*(table: auto, name: cstring, fn: proc(args: varargs[auto]))
  
proc testEach*(table: auto, name: cstring, fn: proc(args: varargs[auto]))

proc testEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint))
proc testOnly*(name: cstring, fn: proc(done: bool))

proc testOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto]))
proc testOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint))

proc testSkip*(name: cstring, fn: proc(args: varargs[auto]))

proc testSkipEach*(table: auto, name: cstring, fn: proc(args: varargs[auto]))

proc testTodo*(name: cstring)
```

Currently untested

## Example usage

See `example/app.nim`
