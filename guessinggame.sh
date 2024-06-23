#!/bin/bash

# Function to get the number of files in the current directory
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Function to prompt the user for a guess
function prompt_user {
    echo "Guess how many files are in the current directory:"
    read guess
}

# Main game loop
file_count=$(get_file_count)
while true; do
    prompt_user
    if [[ $guess -eq $file_count ]]; then
        echo "Congratulations! You guessed correctly."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Your guess is too low."
    else
        echo "Your guess is too high."
    fi
done
