# Jest.nim

This library aims to provide [Jest](https://github.com/ReactiveX/RxJS) bindings for
Nim (Work In Progress)

The following [global Jest API methods](https://jestjs.io/docs/en/api.html) have bindings:

```nim
proc afterAll*(fn: proc(varargs[auto])): auto
proc afterAll*(fn: proc(varargs[auto]), timeout: cint): auto

proc afterEach*(fn: proc(varargs[auto])): auto
proc afterEach*(fn: proc(varargs[auto]), timeout: cint): auto

proc beforeAll*(fn: proc(varargs[auto])): auto
proc beforeAll*(fn: proc(varargs[auto]), timeout: cint): auto

proc beforeEach*(fn: proc(varargs[auto])): auto
proc beforeEach*(fn: proc(varargs[auto]), timeout: cint): auto

proc describe*(name: cstring, fn: proc(varargs[auto]))
proc describeEach*(table: auto, name: cstring, fn: proc(varargs[auto])): auto =
  describe.each(table)(name, fn)
proc describeEach*(table: auto, name: cstring, fn: proc(varargs[auto], timeout: cint)): auto =
  describe.each(table)(name, fn, timeout)
  
proc describeOnly*(name: cstring, fn: proc(varargs[auto])): auto =
  describe.only(name, fn)

proc describeOnlyEach*(table: auto, name: cstring, fn: proc(varargs[auto])): auto =
  describe.only.each(table)(name, fn)
proc describeOnlyEach*(table: auto, name: cstring, fn: proc(varargs[auto], timeout: cint)): auto =
  describe.only.each(table)(name, fn, timeout)

proc describeSkip*(name: cstring, fn: proc(varargs[auto])): auto =
  describe.skip(name, fn)

proc describeSkipEach*(table: auto, name: cstring, fn: proc(varargs[auto])): auto =
  describe.skip.each(table)(name, fn)
  
proc test*(name: cstring, fn: proc(varargs[auto])): auto
proc test*(name: cstring, fn: proc(varargs[auto]), timeout: cint): auto

proc testEach*(table: auto, name: cstring, fn: proc(varargs[auto])): auto =
  test.each(table)(name, fn)
proc testEach*(table: auto, name: cstring, fn: proc(varargs[auto], timeout: cint)): auto =
  test.each(table)(name, fn, timeout)
  
proc testOnly*(name: cstring, fn: proc(varargs[auto])): auto =
  test.only(name, fn)

proc testOnlyEach*(table: auto, name: cstring, fn: proc(varargs[auto])): auto =
  test.only.each(table)(name, fn)
proc testOnlyEach*(table: auto, name: cstring, fn: proc(varargs[auto], timeout: cint)): auto =
  test.only.each(table)(name, fn, timeout)

proc testSkip*(name: cstring, fn: proc(varargs[auto])): auto =
  test.skip(name, fn)

proc testSkipEach*(table: auto, name: cstring, fn: proc(varargs[auto])): auto =
  test.skip.each(table)(name, fn)

proc testTodo*(name: cstring): auto =
  test.todo(name)
```

Currently untested

## Example usage

See `example/app.nim`
