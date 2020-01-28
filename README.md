# Nim bindings for Jest testing library

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

proc it*(name: cstring, fn: proc(args: varargs[auto]))

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

## expect API

```nim
proc expect*(value)
proc expectExtend*(matchers: varargs[auto])
proc expectAnything*()
proc expectAny*(constructor: auto)
proc expectArrayContaining(list: seq[auto])
proc expectAssertions(number)
proc expectHasAssertions*()
proc expectNotArrayContaining*(list: seq[auto])
proc expectNotObjectContaining*(value: JsObject)
proc expectNotStringContaining*(value: cstring)
proc expectNotStringMatching*(match: auto)
proc expectObjectContaining*(value: JsObject)
proc expectStringContaining*(value: cstring)
proc expectStringMatching*(matcher: auto)
proc expectAddSnapshotSerializer*(serializer: auto)
```

`Expectation` instance

```nim
proc toBe*(self: Expectation, value: auto)
proc toHaveBeenCalled*(self: Expectation)
proc toHaveBeenCalledTimes*(number: cint)
proc toHaveBeenNthCalledWith*(args: varags[auto])
proc toHaveReturned*()
proc toHaveReturnedTimes*(number: cint)
proc toHaveReturnedWith*(self: Expectation, value: auto)
proc toHaveLastReturnedWith*(self: Expectation, value: auto)
proc toHaveNthReturnedWith*(self: Expectation,nthCall, value: auto)
proc toHaveLength*(self: Expectation, number: cint)
proc toHaveProperty*(self: Expectation, keyPath: cstring, value: auto)
proc toBeCloseTo*(self: Expectation, number: cint, numDigits: cint)
proc toBeDefined*(self: Expectation)
```

More to follow...

Currently untested

## Example usage

See `example/app.nim`
