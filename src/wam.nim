## **Warren’s Abstract Machine**
## A Tutorial Reconstruction
##
## Hassan Ait-Kaci
## http://wambook.sourceforge.net/wambook.pdf

type Term* = ref object of RootObj
  ## p.24 (first-order) term

type Variable* = ref object of Term

type Constant* = ref object of Term

type Structure* = ref object of Term
  functor: string      ## functor
  term: seq[Structure] ## subterms

proc `$`*(self: Structure): string =
  ## print term
  result = self.functor & "("
  for i in self.term: result &= $i
  result &= ")"

echo Structure(functor: "hello", term: @[Structure(functor: "x")])
