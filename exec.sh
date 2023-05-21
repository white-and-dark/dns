files=(*)

for file in "${files[@]}"
do
    if [[ -f $file ]]; then
        echo "$file文件如下：" >> demo.txt
        cat "$file" >> demo.txt
        echo "" >> demo.txt
    fi
done
