#Could be improved by added a method to escape the loop.
#!/bin/bash

functionlow() { 
    echo "Too Low"
}
functionhigh() {
 echo "Too High!"
}
functioncorrect() {
 echo "Correct!"
}
while true; do
read -p "Enter your guess: " user_guess
count=$(($(find . -maxdepth 1 -type f -printf '+1')))
if [[ "$user_guess" < "$count" ]]; then
functionlow
fi
if [[ "$user_guess" > "$count" ]]; then
functionhigh
fi
if [[ "$user_guess" == "$count" ]]; then
functioncorrect
     break  # Exit the loop
fi
done
