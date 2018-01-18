#!/usr/bin/env bash

set -euo pipefail

./gitsync.sh

make

sum=$(sha256sum referat.pdf | cut -d' ' -f1)
sed 's/^  `[0-9a-f]\{64\}`$/  `'$sum'`/' -i README.md

git add README.md
git commit -m 'Setting SHA256 sum before deploy'
git push

# Use -B to keep gh-pages at most one commit ahead of master.
# This leads to the use of -f when pushing to gh-pages on remote.
# This might actually be one descent use of git push -f..
git checkout -B gh-pages

trap 'git checkout master' INT TERM EXIT

set +e

cat | bash - <<EOF
set -euo pipefail
make clean
make
git add -f vedtaegter-haleanmodninger.svg
git add -f referat.pdf
git commit -S -m 'Deploy'
git push -f origin gh-pages
EOF

set -e

exit 0
