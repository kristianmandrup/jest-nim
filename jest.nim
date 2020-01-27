import macros, jsffi

{.experimental: "callOperator".}

when not defined(js):
  {.error: "Jest.nim is only available for the JS target".}

{.push importcpp.}
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
{.pop.}

proc describeEach*(table: auto, name: cstring, fn: proc(args: varargs[auto])): auto =
  {.emit: ["describe.each(", table, ")(", name, ",", fn, ");"] .}
proc describeEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint)) {.importcpp: "describe.each".}
  
proc describeOnly*(name: cstring, fn: proc(args: varargs[auto])) {.importcpp: "describe.only".}

proc describeOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto])) {.inline.} =
  {.emit: ["describe.only.each(", table, ")(", name, ",", fn, ");"] .}

proc describeOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint)) {.inline.} =
  {.emit: ["describe.only.each(", table, ")(", name, ",", fn, ",", timeout ");"] .}
      
proc describeSkip*(name: cstring, fn: proc(args: varargs[auto])) {.importcpp: "describe.skip".}

proc describeSkipEach*(table: auto, name: cstring, fn: proc(args: varargs[auto])) {.inline.} =
  {.emit: ["describe.skip.each(", table, ")(", name,",", fn, ");"] .}
  
proc testEach*(table: auto, name: cstring, fn: proc(args: varargs[auto])) {.inline.} =
  {.emit: ["test.each(", table, ")(", name,",", fn, ");"] .}

proc testEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint)) {.importcpp: "test.each".}
  
proc testOnly*(name: cstring, fn: proc(done: bool)) {.importcpp: "test.only".}

proc testOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto])) {.importcpp: "test.only.each".}
proc testOnlyEach*(table: auto, name: cstring, fn: proc(args: varargs[auto], timeout: cint)) {.importcpp: "test.only.each".}
      
proc testSkip*(name: cstring, fn: proc(args: varargs[auto])) {.importcpp: "test.skip".}

proc testSkipEach*(table: auto, name: cstring, fn: proc(args: varargs[auto])) {.importcpp: "test.skip.each".}

proc testTodo*(name: cstring) {.importcpp: "test.todo".}
