make -C build > /dev/null
search_dir=tests/allLL
for entry in "$search_dir"/*
do
    # opt -passes=daedalus -load-pass-plugin build/lib/libdaedalus.so -disable-output "$entry" > /dev/null 2>&1
    opt -passes=daedalus -load-pass-plugin build/lib/libdaedalus.so -disable-output "$entry" 2> /dev/null
    if [ $? -gt 0 ]; then
	echo "\033[31;1;4m"
	echo "Error Code: $?"
	echo "$entry failed"
	echo "\033[0m"
    else
	echo "\033[32;1;4m"
	echo "$entry passed"
	echo "\033[0m"
    fi
done
