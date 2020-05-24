checkSalary :: (Ord a1, Num a1, Num a2, Num a3, Num a4, Num a5) => a1 -> (a2, a3, a4, a5) -> (a2, a3, a4, a5)
checkSalary s (a,b,c,d) | salary < 520 = (a+1,b,c,d)
                        | (salary >= 520 && salary < 780) = (a,b+1,c,d)
                        | (salary >= 780 && salary < 999) = (a,b,c+1,d)
                        | salary > 999 = (a,b,c,d+1)
                         where salary = s

checkSalaries :: (Ord a1, Num a1, Num a2, Num a3, Num a4, Num a5) => [a1] -> (a2, a3, a4, a5) -> (a2, a3, a4, a5)
checkSalaries (salary:[]) (a,b,c,d) = checkSalary salary (a,b,c,d) 
checkSalaries (salary:res) (a,b,c,d) =  checkSalaries res (checkSalary salary (a,b,c,d))

check:: (Ord a, Num a, Num a2, Num a3, Num a4, Num a5) => [a]-> (a2, a3, a4, a5) 
check salaries = checkSalaries salaries (0,0,0,0)