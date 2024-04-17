# Example for main

```c
#define MIN_ARGS 1
#define MAX_ARGS 2

int main(int argc, char** argv)
{
    int exit_code = E_FAILURE;

    if ((MIN_ARGS > argc) || (MAX_ARGS < argc))
    {
        print_error("main(): Invalid number of arguments.");
        goto END;
    }

    // Initialize signal handler
    exit_code = signal_action_setup();
    if (E_SUCCESS != exit_code)
    {
        print_error("main(): Unable to setup signal handler.");
        goto END;
    }

    // Load or parse command-line arguments
    exit_code = process_options(argc, argv);
    if (E_SUCCESS != exit_code)
    {
        print_error("main(): Unable to handle CLI options.");
        goto END;
    }

    // Initialize components
    exit_code = initialize_stats_manager();
    if (E_SUCCESS != exit_code)
    {
        print_error("main(): Unable to initialize stats manager.");
        goto END;
    }

    exit_code = initialize_word_manager();
    if (E_SUCCESS != exit_code)
    {
        print_error("main(): Unable to initialize word manager.");
        goto END;
    }

    exit_code = initialize_game();
    if (E_SUCCESS != exit_code)
    {
        print_error("main(): Unable to initialize game.");
        goto END;
    }

    exit_code = run_game();
    if (E_SUCCESS != exit_code)
    {
        print_error("main(): Error occurred while running game.");
        goto END;
    }

    // End of game
    display_stats();
    perform_cleanup();

END:
    return exit_code;
}

```
