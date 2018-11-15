# !/bin/bash
sed -e 's/:/\//g' -e 's/\ /%20/g' -e 's/^/file:\/\/localhost/g' | tr -d "\n" | pbcopy 