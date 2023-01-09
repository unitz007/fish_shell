set hour (eval 'date +"%H"') # gets time hour
if test $hour -lt 12
	set_color red; echo "Welcome $USER, Good Morning."
else if test $hour -lt 16 -a $hour -ge 12
	set_color red; echo "Welcome $USER, Good Afternoon."
else if test $hour -lt 23 -a $hour -ge 16
	set_color red; echo "Welcome $USER, Good Evening."
end