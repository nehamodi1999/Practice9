isparttime=1;
isfulltime=2;
max_hr_in_month=100;
emp_rate_per_hr=20;
num_working_days=20;
#variables
totalEmpHr=0
totalWorkingDays=0


while [[ $totalEmpHr -lt $max_hr_in_month && $totalWorkingDays -lt $num_working_days ]]
do
((totalWorkingDays++))
#empCheck=$((RANDOM%3));
empCheck=2;
echo $empCheck;
case $empCheck in
$isfulltime)
empHrs=8;;
$isparttime)
empHrs=4;;
*)
empHrs=0;;
esac
total=$totalEmpHr;
totalEmpHr=$(( $totalEmpHr + $empHrs ))
echo $totalEmpHr
if(($totalEmpHr>100))
then
totalEmpHr=$total;
fi
totalSalary=$(( $totalEmpHr * $emp_rate_per_hr ));
#echo $totalSalary
done
echo "$totalSalary $totalEmpHr";

echo "****************************************************************"





dailyAndTotalWageOfFullTime(){
	declare -a fullTime
	total=0
	present=0
	for (( i = 0; i < 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			fullTime[$i]=160

		else
			fullTime[$i]=0
		fi
	done
	for (( i = 0; i < 20; i++ )); do
		total=$(($total+$((fullTime[$i]))))
		echo -n "$((fullTime[$i]))  "
	done
	echo ""
	echo "total presents are $present"
	echo "total wage of a full time employee of $present days is $total"
}
dailyAndTotalWageOfPartTime(){
	declare -a partTime
	total=0
	present=0
	for (( i = 0; i < 20; i++ )); do
		if (( $(($RANDOM%2)) == 1 )); then
			present=$(($present+1))
			partTime[$i]=80

		else
			partTime[$i]=0
		fi
	done
	for (( i = 0; i < 20; i++ )); do
		total=$(($total+$((partTime[$i]))))
		echo -n "$((partTime[$i]))  "
	done
	echo ""
	echo "total presents are $present"
	echo "total wage of a part time employee of $present days is $total"
}
echo "select the choice 
for full time employee daily wage and total wage enter 1
for part time employee daily wage and total wage enter 2"
read choice
case $choice in
	1 )
		dailyAndTotalWageOfFullTime
		;;
	2 )
		dailyAndTotalWageOfPartTime
		;;
esac


