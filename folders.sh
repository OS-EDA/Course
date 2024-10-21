find -type f -name '*.md' -print0 | while read -d $'\0' file; do
    echo "Processing $file"
done

