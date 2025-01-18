function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return 0;
  } else {
    return foo(x);
  }
}

/* HH_ANNOTATION_START
Type:int
HH_ANNOTATION_END */
<<__EntryPoint>>
function main(): void {
  var x = 5;
  var result = bar(x);
  echo result;
}
