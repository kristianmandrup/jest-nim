import jsconsole, jsffi, strutils, sequtils, sugar
from jest import beforeEach, afterEach, test, describe

describe("person", proc() => 
  var x = 0

  beforeEach(proc() => 
    x = 1
  )

  afterEach(proc() => 
    x = 2
  )

  test("sum", proc() => 
    assert 1 + 2 === 3
  )

  test("beforeEach", proc() => 
    assert x === 1
  )
)


