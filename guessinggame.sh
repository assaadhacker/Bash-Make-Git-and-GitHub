#!/usr/bin/env bash

function guess_files {
    local correct_guess=$(ls -l | grep "^-" | wc -l)
    local user_guess

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    
    while true; do
        read -p "Please enter your guess: " user_guess

        if [[ $user_guess -lt $correct_guess ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $user_guess -gt $correct_guess ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! Your guess is correct."
            break
        fi
    done
}

guess_files
