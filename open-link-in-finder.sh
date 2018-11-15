# !/bin/bash

clipboard=`pbpaste`
filePath="$clipboard"
parsedLink=

function linkToPath(){
    echo "${1/\//}"
}

function smbToPath(){
    echo "${1// /%20}" | sed 's!smb://bcl-data4!file://localhost/Volumes!'
}

if [[  "$filePath" == file:///*  ]]; then
    open `linkToPath "$filePath"`
    elif [[  $filePath == smb://*  ]]; then
    open `smbToPath "$filePath"`
    # open `smbToPath "$filepath"`
    else 
    open "$filePath"
fi

