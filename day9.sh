random_no=$((RANDOM%3))
isFulltime=1
isPartime=2
workingDayPerMonth=20
salary=0
perHourEconomy=20
shouldLogHrs=8
workingHours=100


echo "Here It's My Random Number : $random_no"

case $random_no in 
    1) 
    salary=$((shouldLogHrs*perHourEconomy))
    echo "Employee Joined As Full-Time"
    echo "Salary Is : $salary"
    salary1=$((workingHours*perHourEconomy))
    echo "Employee Joined As Full-Time with $workingHours hours"
    echo "Salary for $workingHours hours Is : $salary1"
    echo "Full-Time Employees Salary for $workingHours hours and $workingDayPerMonth   days :"
    echo "Salary for $workingHours hours and $workingDayPerMonth days is : "$(($salary1  * $workingDayPerMonth ))
    echo "Full-Time Employees Salary per Month :"
    echo "Salary per Month is : "$(($salary * $workingDayPerMonth ))
    ;;
    2)
    getParttimeHrs=$((shouldLogHrs/2))
    salary=$((getParttimeHrs*perHourEconomy))
    echo "Employee Joined As Part-Time"
    echo "Salary Is : $salary"
    salary1=$((workingHours*getParttimeHrs))
    echo "Employee Joined As Part-Time with $workingHours hours"
    echo "Salary for $workingHours hours Is : $salary1"
    echo "Part-Time Employees Salary for $workingHours hours and $workingDayPerMonth  days :"
    echo "Salary for $workingHours hours and $workingDayPerMonth days is : "$(($salary1  * $workingDayPerMonth ))
    echo "Part-Time Employees Salary per Month :"
    echo "Salary per Month is : "$(($salary * $workingDayPerMonth ))
   ;;
   *)
    echo "Employee Absent"
    echo "Salary Is : $salary"
   ;;
esac