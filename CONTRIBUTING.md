# Contributing

## Registering a New Extension

First, clone this repository.

Next, make a new directory inside the `ext/` subdirectory. The name of this directory will be the public identifier for
your extension.

The directory name **MUST** only contain lowercase letters, numbers, and hyphens. It must be at least 1 character long.
It must be no larger than 32 characters long. You can us the following regular expression to validate names: 
`/^[0-9a-z\-]{1,32}$/`


