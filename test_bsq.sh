#!/bin/sh

i=1
chmod 744 bsq bsq_test generator.pl generator2.pl generator3.pl
rm -f test
touch test
chmod 000 test
./bsq_test test > other_bsq_test
./bsq test > my_bsq
diff my_bsq other_bsq_test > delete
if [ $? == 1 ]
then
	echo "il y a une erreur avec le test enregistre dans test $i"
	mkdir -p error_file_$i
	cp test ./error_file_$i/map_before_program
	cp delete ./error_file_$i/diff_between_output
	cp other_bsq_test error_file_$i/bsq_test_result
	cp my_bsq error_file_$i/my_bsq_result
	i=$(($i + 1))
fi
rm -rf test
mkdir -p dir
./bsq_test dir > other_bsq_test
./bsq dir > my_bsq
diff my_bsq other_bsq_test > delete
if [ $? == 1 ]
then
	echo "il y a une erreur avec le test enregistre dans test $i"
	mkdir -p error_file_$i
	cp test ./error_file_$i/map_before_program
	cp delete ./error_file_$i/diff_between_output
	cp other_bsq_test error_file_$i/bsq_test_result
	cp my_bsq error_file_$i/my_bsq_result
	i=$(($i + 1))
fi
rm -rf dir
while [ true ]
do
	./generator.pl 100 100 50 > test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator.pl 50 50 0 > test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator.pl 60 10 0 > test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator3.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test
	echo "." >> test
	./bsq_test test > other_bsq_test
	./bsq test > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test2
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test3
	./bsq_test test test2 test3 > other_bsq_test
	./bsq test test2 test3 > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test2
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test3
	echo "." >> test
	./bsq_test test test2 test3 > other_bsq_test
	./bsq test test2 test3 > my_bsq
	diff my_bsq other_bsq_test > delete
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test enregistre dans test $i"
		mkdir -p error_file_$i
		cp test ./error_file_$i/map_before_program
		cp delete ./error_file_$i/diff_between_output
		cp other_bsq_test error_file_$i/bsq_test_result
		cp my_bsq error_file_$i/my_bsq_result
		i=$(($i + 1))
	fi
done
