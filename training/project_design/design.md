# Hangman

Designing the Hangman program in a way that adheres to the principles of Single Responsibility Principle (SRP) and Separation of Concerns (SoC) involves structuring the program into distinct, logical components where each component handles a specific aspect of the program's functionality. Here’s a potential design approach:

### Modular Design

1. **Main Controller**: Orchestrates the game flow but does not handle the details of game logic or data management directly.
   - Initializes the game environment.
   - Controls the game loop (user inputs, game state updates).
   - Delegates tasks to specific components (e.g., input validation, game logic, display updates).

2. **Game Logic Module**: Manages the core gameplay mechanics.
   - Processes guesses and determines if they are correct or incorrect.
   - Updates the game state based on guesses (revealing letters, updating remaining attempts).
   - Checks win/loss conditions after each guess.

3. **Word Manager**: Handles operations related to word selection and validation.
   - Loads words from the source file.
   - Selects a random word for the game session.
   - Validates words based on predefined criteria (alphabetic, length constraints).

4. **Statistics Manager**: Manages player statistics.
   - Reads and writes game statistics to the `~/.hangman` file.
   - Updates statistics based on game outcomes (wins, losses, scores).
   - Displays statistics at the start of each game session.

5. **User Interface (UI) Module**: Manages all user interactions and displays.
   - Displays the current state of the word, the hangman drawing, and any messages.
   - Shows error messages and user prompts.
   - Ensures that all display elements are clear and correct.

6. **Input Handler**: Manages user input.
   - Validates and processes user input.
   - Ensures that guesses are in the correct format (e.g., single alphabetic characters).
   - Handles command-line arguments for custom settings (like choosing the word source file).

### Principles Applied

- **Single Responsibility Principle (SRP)**: Each module or component is responsible for a single part of the functionality. For example, the Statistics Manager exclusively handles reading, updating, and storing game statistics.
  
- **Separation of Concerns (SoC)**: Different aspects of the program's functionality are clearly separated into different modules. This not only makes the code more maintainable and testable but also reduces the complexity of each module.

### Additional Considerations

- **Exception Handling**: Robust handling of exceptions and errors, especially in file operations and input handling, to maintain stability and provide clear feedback.

- **Dependency Injection**: For better testability and flexibility, dependencies (like file paths or configuration settings) could be injected into components rather than hard-coded.

- **Configuration Management**: Handling game settings (like maximum word length or source file paths) in a centralized configuration module that can be easily adjusted without altering code.

Implementing the Hangman game with this structure promotes maintainability, scalability, and testability. Each component can be independently developed, tested, and modified, making the whole system more robust and easier to manage.
