# TODO: Re-write from edlib/apps/aligner/aligner.cpp

#{.passC: gorge("pkg-config --cflags edlib").}
#{.passL: gorge("pkg-config --libs edlib").}
import edlib
from strformat import fmt

proc helloWorld() =
  let result = edlibAlign("hello", 5, "world!", 6, edlibDefaultAlignConfig())
  echo fmt"edit_distance('hello', 'world!') = {result.editDistance}"
  edlibFreeAlignResult(result)

proc main() =
  echo "dunn"
  helloWorld()

if isMainModule:
  main()
