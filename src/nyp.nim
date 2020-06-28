
import os

when isMainModule:
  for i in 0..paramCount():
    echo "argv[", i, "] = <", $os.paramStr(i), ">"
