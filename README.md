
Optional (backward compatible)

```
if dwsh is-installed 2> /dev/null; then
  # Wrap script in docker: git.io/fhgmX
  dwsh "python:2-slim"; exit $?
fi
```
