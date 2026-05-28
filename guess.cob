       IDENTIFICATION DIVISION.
       PROGRAM-ID. GUESS-GAME.
       AUTHOR. GEMINI-ENTERPRISE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-TARGET-NO       PIC 9(3) VALUE 42.
       01  WS-USER-GUESS      PIC 9(3).
       01  WS-ATTEMPTS        PIC 9(2) VALUE 0.
       01  WS-MAX-ATTEMPTS    PIC 9(2) VALUE 10.
       01  WS-GAME-OVER       PIC X VALUE 'Y'.

       PROCEDURE DIVISION.
       0000-MAIN.
           DISPLAY "======================================="
           DISPLAY "       RETRO COBOL GUESSING GAME       "
           DISPLAY "======================================="
           DISPLAY "I am thinking of a number from 1-100."
           DISPLAY "You have 10 attempts to guess it!"
           DISPLAY " "
           
           MOVE 'N' TO WS-GAME-OVER
           PERFORM 1000-PLAY-GAME UNTIL WS-GAME-OVER = 'Y'

           DISPLAY " "
           DISPLAY "Thank you for playing!"
           STOP RUN.

       1000-PLAY-GAME.
           ADD 1 TO WS-ATTEMPTS
           DISPLAY "Attempt " WS-ATTEMPTS "/10. Guess (001-100): "
               WITH NO ADVANCING
           ACCEPT WS-USER-GUESS

           IF WS-USER-GUESS = WS-TARGET-NO
               DISPLAY "WINNER! You guessed it!"
               MOVE 'Y' TO WS-GAME-OVER
           ELSE
               IF WS-USER-GUESS < WS-TARGET-NO
                   DISPLAY "Too low! Try again."
               ELSE
                   DISPLAY "Too high! Try again."
               END-IF
           END-IF

           IF WS-ATTEMPTS >= WS-MAX-ATTEMPTS 
           AND WS-GAME-OVER = 'N'
               DISPLAY "GAME OVER! No more attempts."
               DISPLAY "The secret number was: " WS-TARGET-NO
               MOVE 'Y' TO WS-GAME-OVER
           END-IF.

