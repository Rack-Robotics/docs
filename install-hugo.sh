#!/bin/bash

set -e

if ! command -v jq &> /dev/null
then
    echo "jq could not be found, installing"
    # Reinvoke this script with sudo if necessary
    [[ $(id -u) -eq 0 ]] || exec sudo /bin/bash -c "$(printf '%q ' "$BASH_SOURCE" "$@")"
    sudo apt install -y jq
fi

VFILE=".hugoversion"
VERSION=$(cat $VFILE)

TAG_URL="https://api.github.com/repos/gohugoio/hugo/releases/tags/$VERSION"
echo "Searching for Hugo $VERSION at $TAG_URL"

URL=$(curl -s "$TAG_URL" |
    jq -r '[.assets[] | select(.browser_download_url | test("hugo_extended.*Linux-64bit"))][0] | .browser_download_url')

if [[ -z "$URL" || "$URL" == "null" ]]; then
  echo "Could not find a suitable Hugo binary for $VERSION."
  exit 1
fi

echo "Found $URL"

INSTALLER=$(basename $URL)

wget -q --show-progress -P /tmp $URL

# Around v0.102.3 hugo_extended(.*)Linux-64bit.deb was
# replaced with hugo_extended(.*)Linux-64bit.tar.gz
if [[ $URL == *.tar.gz ]]; then
  tar -C /tmp -xf /tmp/$INSTALLER
  mv /tmp/hugo /usr/local/bin/hugo
else
  sudo dpkg -i /tmp/$INSTALLER
fi

rm /tmp/$INSTALLER