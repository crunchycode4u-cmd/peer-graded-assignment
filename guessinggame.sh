#Could be improved by added a method to escape the loop.
#!/bin/bash
while true; do
read -p "Enter your guess: " user_guess
count=$(($(find . -maxdepth 1 -type f -printf '+1')))
if [[ "$user_guess" < "$count" ]]; then
    echo "Too Low!"
fi
if [[ "$user_guess" > "$count" ]]; then
    echo "Too High!"
fi
   if [[ "$user_guess" == "$count" ]]; then
     echo "Correct! You guessed it."
     break  # Exit the loop
else
        echo "Incorrect. Try again."
fi
done
