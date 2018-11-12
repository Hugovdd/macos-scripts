# !/bin/bash

filePath=`pbpaste`
parsedLink="${filePath/\//}"


if [[  "$filePath" == file:///*  ]]; then
    open $parsedPath
    else
    open "$filePath"
fi



# file:///localhost/Volumes/Brave/Brave%20Creative/2018/AGE%20UK/300760_Age%20UK%20Pitch
# file://localhost/Volumes/Brave/Brave%20Creative/2018/AGE%20UK/300760_Age%20UK%20Pitch