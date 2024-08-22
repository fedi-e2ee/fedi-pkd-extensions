#!/usr/bin/env bash

# Get the current base directory
basedir=$( dirname $( readlink -f ${BASH_SOURCE[0]} ) )

echo "What is the name of your extension directory?"
read -r newdir
if [[ "$newdir" =~ /^[0-9a-z\-]{1,32}$ ]]; then
  echo "Creating ext/{$newdir}"
  mkdir "${basedir}/ext/${newdir}"
else
  echo "Invalid directory name"
  exit 1
fi

if [ -f "${basedir}/ext/${newdir}/README.md" ]; then
  echo "README already exists"
  exit 1
fi

echo "Creating skeletal README"

cat << EOF > "${basedir}/ext/${newdir}/README.md"
# Extension Name Goes Here

* Authors:
* Version 0.0.0

## Registered Prefix

$(newdir)

## Input Validation Rules

TODO

## References

TODO

EOF

cat << EOF >> "{$basedir}/README.md"

* [${newdir}](ext/${newdir})
EOF
