#!/bin/sh
i=1
chmod 744 bsq bsq_test generator.pl generator2.pl generator3.pl generator4.pl generator5.pl
rm -f test$i
touch test$i
chmod 000 test$i
./bsq_test test$i > other_bsq_test$i
./bsq test$i > my_bsq$i
diff my_bsq$i other_bsq_test$i > delete$i
if [ $? == 1 ]
then
	echo "il y a une erreur avec le test$i enregistre dans test$i $i"
	mkdir -p error_file_$i
	cp test$i ./error_file_$i/map_before_program$i
	cp delete$i ./error_file_$i/diff_between_output$i
	cp other_bsq_test$i error_file_$i/bsq_test_result$i
	cp my_bsq$i error_file_$i/my_bsq_result$i
fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
	i=$(($i + 1))
		echo "\ntest$i\n"
mkdir -p dir
./bsq_test dir > other_bsq_test$i
./bsq dir > my_bsq$i
diff my_bsq$i other_bsq_test$i > delete$i
if [ $? == 1 ]
then
	echo "il y a une erreur avec le test$i enregistre dans test$i $i"
	mkdir -p error_file_$i
	cp test$i ./error_file_$i/map_before_program$i
	cp delete$i ./error_file_$i/diff_between_output$i
	cp other_bsq_test$i error_file_$i/bsq_test_result$i
	cp my_bsq$i error_file_$i/my_bsq_result$i
fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
	i=$(($i + 1))
		echo "\ntest$i\n"
rm -rf dir
echo "4.ox\n\n\n\n\n" > test$i
./bsq_test test$i > other_bsq_test$i
./bsq test$i > my_bsq$i
diff my_bsq$i other_bsq_test$i > delete$i
if [ $? == 1 ]
then
	echo "il y a une erreur avec le test$i enregistre dans test$i $i"
	mkdir -p error_file_$i
	cp test$i ./error_file_$i/map_before_program$i
	cp delete$i ./error_file_$i/diff_between_output$i
	cp other_bsq_test$i error_file_$i/bsq_test_result$i
	cp my_bsq$i error_file_$i/my_bsq_result$i
fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
	i=$(($i + 1))
		echo "\ntest$i\n"
./generator.pl 100 100 50 > test$iasuppr
echo -n `cat test$iasuppr` > test$i
rm -rf test$iasuppr
./bsq_test test$i > other_bsq_test$i
./bsq test$i > my_bsq$i
diff my_bsq$i other_bsq_test$i > delete$i
if [ $? == 1 ]
then
	echo "il y a une erreur avec le test$i enregistre dans test$i $i"
	mkdir -p error_file_$i
	cp test$i ./error_file_$i/map_before_program$i
	cp delete$i ./error_file_$i/diff_between_output$i
	cp other_bsq_test$i error_file_$i/bsq_test_result$i
	cp my_bsq$i error_file_$i/my_bsq_result$i
fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
	i=$(($i + 1))
		echo "\ntest$i\n"
while [ true ]
do
	./generator.pl 100 100 50 > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator.pl 50 50 0 > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator.pl 60 10 0 > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator3.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	echo "." >> test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i2
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i3
	./bsq_test test$i test$i2 test$i3 > other_bsq_test$i
	./bsq test$i test$i2 test$i3 > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf test$i2
rm -rf test$i3
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i2
	./generator2.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i3
	echo "." >> test$i
	./bsq_test test$i test$i2 test$i3 > other_bsq_test$i
	./bsq test$i test$i2 test$i3 > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf test$i2
rm -rf test$i3
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
	./generator5.pl $((RANDOM%1000+1)) $((RANDOM%1000+1)) $((RANDOM%100+1)) > test$i
	./bsq_test test$i > other_bsq_test$i
	./bsq test$i > my_bsq$i
	diff my_bsq$i other_bsq_test$i > delete$i
	if [ $? == 1 ]
	then
		echo "il y a une erreur avec le test$i enregistre dans test$i $i"
		mkdir -p error_file_$i
		cp test$i ./error_file_$i/map_before_program$i
		cp delete$i ./error_file_$i/diff_between_output$i
		cp other_bsq_test$i error_file_$i/bsq_test_result$i
		cp my_bsq$i error_file_$i/my_bsq_result$i
	fi
rm -rf test$i
rm -rf delete$i
rm -rf other_bsq_test$i
rm -rf my_bsq$i
		i=$(($i + 1))
		echo "\ntest$i\n"
done
