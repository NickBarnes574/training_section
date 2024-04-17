# Hangman Game Overview

**Hangman** is a classic word guessing game where the objective is to deduce a hidden word, one letter at a time. The gameplay is simple yet engaging:

- **Correct Guess:** If the guessed letter exists in the word, all occurrences of that letter are revealed.
- **Winning Condition:** The player wins by guessing all the letters correctly, revealing the full word.
- **Incorrect Guess:** Each incorrect guess results in a part of a hangman figure being drawn. The game ends in loss if the hangman figure is fully drawn, typically after six incorrect guesses.

## Program Functionality

The software developed for this game operates under the following specifications:

- **Word Selection:** Randomly selects a word from a designated file, which can be specified using an optional command-line argument.
- **Player Statistics:** Maintains and displays statistics at the beginning of each game session, detailing the total games played, number of wins, number of losses, and the average score per win based on the number of incorrect guesses.

## Technical Requirements

### Implementation Details

- **Statistics Storage:** Player statistics are stored in the file `~/.hangman` located in the user’s home directory. Developers have the flexibility to define the file format.
- **Word Source:** The target word is randomly chosen from a source file. If not specified via the command line, the default file `~/.words` is used.
- **Source File Format:** The file should contain one word per line. Lines that deviate from this format are ignored.
- **Word Validity:** Only alphabetic characters are valid. Words not adhering to this rule are skipped.
- **Word Length Support:** The program can handle words as lengthy as "Supercalifragilisticexpialidocious."

### Execution Requirements

- **Argument Handling:** The program generates an error message if launched with excessive arguments.
- **Game Start Display:** Shows the current game number, wins, losses, and average score at the start of each session.
- **Guess Feedback:** Provides immediate feedback after each guess; it either increases the count of wrong guesses or updates the display of the word to show correctly guessed letters.
- **Case Sensitivity:** Treats all guesses as case-insensitive but displays the word in its original case as found in the source file.
- **Winning Feedback:** Notifies the player of a win and displays the number of incorrect guesses.
- **Robustness:** Ensures the program does not crash or enter an infinite loop, regardless of the input provided.
