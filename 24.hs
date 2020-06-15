main = interact isPalindromeReplace

isPalindromeReplace :: String -> String
isPalindromeReplace  = unlines.map replacePalindrome.lines
    where isPalindrome p = p == reverse p
          replacePalindrome l = 
              if isPalindrome l 
              then 
                  "Palindrome" 
              else 
                  "No Palindrome"