import macros, jsffi

{.experimental: "callOperator".}

when not defined(js):
  {.error: "Jest.nim is only available for the JS target".}

type
  Expectation = JsObject
    `not`*,
    resolves*,
    rejects*    

{.push importcpp.}
proc expect*(value): Expectation

# Expectation instance methods
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
{.pop.}

proc expectExtend*(matchers: varargs[auto]): Expectation {.importcpp: "expect.extend".}
proc expectAnything*(): Expectation {.importcpp: "expect.anyThing".}
proc expectAny*(constructor: auto): Expectation {.importcpp: "expect.any".}
proc expectArrayContaining(list: seq[auto]): Expectation {.
    importcpp: "expect.arrayContaining".}
proc expectAssertions(number): Expectation {.importcpp: "expect.assertions".}
proc expectHasAssertions*(): Expectation {.importcpp: "expect.arrayContaining".}
proc expectNotArrayContaining*(list: seq[auto]): Expectation {.
    importcpp: "expect.not.arrayContaining".}
proc expectNotObjectContaining*(value: JsObject): Expectation {.
    importcpp: "expect.not.objectContaining".}
proc expectNotStringContaining*(value: cstring): Expectation {.
    importcpp: "expect.not.stringContaining".}
proc expectNotStringMatching*(match: auto): Expectation {.
    importcpp: "expect.not.stringMatching".}
proc expectObjectContaining*(value: JsObject): Expectation {.
    importcpp: "expect.objectContaining".}
proc expectStringContaining*(value: cstring): Expectation {.
    importcpp: "expect.stringContaining".}
proc expectStringMatching*(matcher: auto): Expectation {.importcpp: "expect.stringMatching".}
proc expectAddSnapshotSerializer*(serializer: auto): Expectation {.
    importcpp: "expect.addSnapshotSerializer".}
