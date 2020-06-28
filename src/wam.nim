## **Warren’s Abstract Machine**
## A Tutorial Reconstruction
##
## Hassan Ait-Kaci
## http://wambook.sourceforge.net/wambook.pdf

type WAM = ref object
  functor: string
  term: seq[WAM]

proc `$`(self: WAM): string =
  result = self.functor & "("
  result &= ")"

echo WAM(functor: "hello", term: @[])
