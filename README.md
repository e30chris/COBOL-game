# COBOL-game

_Would you like to play a game?_

# 🎮 Retro COBOL Guessing Game

<p align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjIzdm9zNHp4NW41ZWJ1NTlxemRib25mZnl0NzVuNHdrbGY5Z3U5NSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/jjYGVvxgQSTsc/giphy.gif" alt="WOPR Joshua Supercomputer" width="450"/>
</p>

> *"A strange game. The only winning move is not to play. How about a nice game of chess?"* — Joshua / WOPR (1983)

Welcome to the **Retro COBOL Guessing Game**! This is a simple...

---

## 🕹️ Game Features

| Feature | Description |
|---|---|
| **The Challenge** | Guess a secret number between `1` and `100`. |
| **Limited Tries** | You have exactly `10` attempts to find the target. |
| **Interactive Feedback** | Displays `"Too high! Try again."` or `"Too low! Try again."` after each attempt. |
| **Strict Formatted Design** | Built with standard-compliant syntax to prevent line overflow and compiler issues. |

---

## 💻 Technical Specifications

COBOL requires rigid layouts, making this repository an excellent sandbox for understanding:
* **The 72-Column Margin Rule**: Code is carefully structured to avoid spilling past column 72, preventing classic `continuation character expected` errors.
* **Working-Storage Section**: Variable declarations (`PIC 9(3)`, `PIC X`) to handle states, loop counters, and guess values.
* **Control Flow**: Traditional `PERFORM UNTIL` loops and nested `IF-ELSE` conditionals.

---

## 🚀 How to Compile and Run

To run this retro classic, you will need a COBOL compiler like **GnuCOBOL** (formerly OpenCOBOL).

### 1. Installation

Install GnuCOBOL using your preferred package manager:

| OS / Platform | Command |
|---|---|
| **macOS (Homebrew)** | `brew install gnu-cobol` |
| **Linux (Debian/Ubuntu)** | `sudo apt-get install gnucobol` |
| **Windows (MSYS2)** | `pacman -S mingw-w64-x86_64-gnucobol` |

### 2. Compilation

Compile the source file `guess.cob` using one of the following methods:

```bash
# Option A: Compile with legacy Fixed-Format (default)
cobc -x -o guess guess.cob

# Option B: Compile explicitly ignoring the 72-column margin
cobc -free -x -o guess guess.cob
```

### 3. Execution

Once compiled, launch the game directly from your terminal:

```bash
./guess
```

---

## 🤝 Contributing

Feel free to fork this repository and add your own retro features! Some ideas to try out:
1. Implement a pseudo-random number generator (PRNG) utilizing system time.
2. Build a high-score system that persists to an external `.DAT` file.
3. Turn this into a text-based adventure with directional room selectors.

---

## 📝 License

This project is open-source and available under the **MIT License**.

---

Would you like to customize any specific sections, add a section about the GCP deployment we talked about, or should we commit this right into your workspace? Let me know how you want to proceed!
