int x; bool dbz;
active proctype measure() {
  do :: true ->
    if
    :: (x != 0) -> dbz = (x == 0)
    :: skip
    fi
  od
}
active[2] proctype roll() {
  do :: true ->
    x = x + 1;
    if
    :: x > 10 -> x = x - 10
    :: skip
    fi
  od
}
active proctype monitor() {
  do :: true ->
    assert(!dbz);
    assert(x >= 0);
  od
}
