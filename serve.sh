#!/usr/bin/env bash
CMD=''
# This is needed to actually process the Rmd
CMD="${CMD}options(servr.daemon=TRUE);"
CMD="${CMD}blogdown::serve_site();"
# The below successfully opens the page in a browser
CMD="${CMD}servr::browse_last();"
# This halts the exit of the server until enter is pressed
CMD="${CMD}cat('Press <Enter> to continue...');"
CMD="${CMD}invisible(readLines(file('stdin'), 1))"
R --no-restore --no-save -e "${CMD}"
