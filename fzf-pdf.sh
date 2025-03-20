#/bin/bash
file=$(__fzf_select__)
pdfViewer="zathura"
if [ ! -z "$file" ]; then
    if [ $(echo "$file" | awk -F. '{print $NF}') == "pdf" ]; then
        $pdfViewer $file &
    else 
        echo "Wrong format, opening the file $file is canceled."
    fi
else 
    echo "opening a file is canceled."
fi
