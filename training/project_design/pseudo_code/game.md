# Game

```c
int run_game()
{
    int guess = 0;
    while (1)
    {
        select_random_word();

        get_player_input();

        validate_input();

        validate_word();

        // Update number of guesses
        guess ++;
    }
}
```
