import edlib
from strformat import fmt

proc helloWorld() =
  let result = edlibAlign("hello", 5, "world!", 6, edlibDefaultAlignConfig())
  echo fmt"edit_distance('hello', 'world!') = {result.editDistance}"
  edlibFreeAlignResult(result)

if isMainModule:
  helloWorld()
