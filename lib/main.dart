import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

// GameBoard class definition
class GameBoard {
  late List<int> _board;
  late int _currentPlayer; // 0 for Player X, 1 for Player O

  GameBoard() {
    reset();
  }

  List<int> getBoard() {
    return List.from(_board); // Return a copy
  }

  int getCell(int index) {
    return _board[index];
  }

  int get currentPlayer => _currentPlayer;

  void reset() {
    _board = List.filled(9, 2); // 2 represents an empty cell
    _currentPlayer = 0; // Player X starts
  }

  bool makeMove(int index) {
    if (index < 0 || index >= 9 || _board[index] != 2) {
      return false; // Invalid move
    }
    _board[index] = _currentPlayer;
    _currentPlayer = 1 - _currentPlayer; // Switch player
    return true;
  }

  // Returns: 0 for Player X win, 1 for Player O win, -1 for no winner, 2 for draw
  int checkWin() {
    // Winning combinations
    const List<List<int>> winPatterns = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
      [0, 4, 8], [2, 4, 6]             // Diagonals
    ];

    for (var pattern in winPatterns) {
      int p0 = _board[pattern[0]];
      int p1 = _board[pattern[1]];
      int p2 = _board[pattern[2]];

      if (p0 != 2 && p0 == p1 && p1 == p2) {
        return p0; // Returns the player (0 or 1) who won
      }
    }

    if (isDraw()) {
      return 2; // Draw
    }

    return -1; // No winner yet
  }

  bool isDraw() {
    return _board.every((cell) => cell != 2);
  }
}
// End of GameBoard class

// BotPlayer class definition
class BotPlayer {
  int makeMove(GameBoard board) {
    List<int> currentBoard = board.getBoard();
    List<int> emptyCells = [];

    for (int i = 0; i < currentBoard.length; i++) {
      if (currentBoard[i] == 2) { // 2 represents an empty cell
        emptyCells.add(i);
      }
    }

    if (emptyCells.isNotEmpty) {
      final random = Random();
      int randomIndex = random.nextInt(emptyCells.length);
      return emptyCells[randomIndex];
    } else {
      return -1; // Should not happen in a typical game flow
    }
  }
}
// End of BotPlayer class

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Center(child: Text('TicTacToe')),
          ),
          body: const TicTacToe()),
    );
  }
}

class TicTacToe extends StatefulWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  _TicTacToeState createState() => _TicTacToeState();
}

enum GameMode { humanVsHuman, humanVsBot }

class _TicTacToeState extends State<TicTacToe> {
  late GameBoard _gameBoard;
  late List<int> _displayBoard; // For UI rendering, separate from game logic board
  bool _gameOver = false; // To disable buttons when game is over
  GameMode _gameMode = GameMode.humanVsHuman; // Default game mode
  final BotPlayer _botPlayer = BotPlayer(); // Instance of the bot player
  bool _isProcessingBotTurn = false; // To prevent human input during bot's turn

  @override
  void initState() {
    super.initState();
    _gameBoard = GameBoard();
    _displayBoard = _gameBoard.getBoard();
    // _gameMode is already initialized at declaration
  }

  void _setGameMode(GameMode mode) {
    if (_gameMode != mode) {
      setState(() {
        _gameMode = mode;
        _resetGame();
      });
    }
  }

  // Helper function to handle cell taps
  void _handleTap(int index) {
    // Prevent human input if:
    // 1. Game is over.
    // 2. Cell is not empty.
    // 3. It's Human vs Bot mode AND it's currently the bot's turn (_gameBoard.currentPlayer == 1).
    // 4. Bot is currently processing its turn.
    if (_gameOver || _gameBoard.getCell(index) != 2 || _isProcessingBotTurn) {
      return;
    }
    if (_gameMode == GameMode.humanVsBot && _gameBoard.currentPlayer == 1) {
      return; // Not human's turn
    }

    // Human's move
    if (_gameBoard.makeMove(index)) {
      setState(() {
        _displayBoard = _gameBoard.getBoard();
        int winner = _gameBoard.checkWin();
        if (winner == 0 || winner == 1) { // Human (0) or Bot (1) wins
          _gameOver = true;
          int winningDisplayValue = (winner == 0) ? 10 : 20;
          for (int i = 0; i < 9; i++) {
            _displayBoard[i] = winningDisplayValue;
          }
        } else if (winner == 2) { // Draw
          _gameOver = true;
        }
      });

      // If game is not over and it's bot's turn in HumanVsBot mode
      if (!_gameOver && _gameMode == GameMode.humanVsBot && _gameBoard.currentPlayer == 1) {
        _isProcessingBotTurn = true;
        Future.delayed(const Duration(milliseconds: 750), () { // Bot "thinking" delay
          if (_gameOver) { // Check if game ended while bot was "thinking" (e.g. human reset)
             _isProcessingBotTurn = false;
            return;
          }
          int botMoveIndex = _botPlayer.makeMove(_gameBoard);
          if (botMoveIndex != -1) {
            _gameBoard.makeMove(botMoveIndex);
            setState(() {
              _displayBoard = _gameBoard.getBoard();
              int botWinner = _gameBoard.checkWin();
              if (botWinner == 0 || botWinner == 1) { // Human (0) or Bot (1) wins
                _gameOver = true;
                int winningDisplayValue = (botWinner == 0) ? 10 : 20;
                for (int i = 0; i < 9; i++) {
                  _displayBoard[i] = winningDisplayValue;
                }
              } else if (botWinner == 2) { // Draw
                _gameOver = true;
              }
            });
          }
          _isProcessingBotTurn = false;
        });
      }
    }
  }

  void _resetGame() {
    setState(() {
      _gameBoard.reset();
      _displayBoard = _gameBoard.getBoard();
      _gameOver = false;
      _isProcessingBotTurn = false; // Reset bot processing state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Game Mode Selection Buttons
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _gameMode == GameMode.humanVsHuman ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _setGameMode(GameMode.humanVsHuman),
                child: const Text('Human vs Human'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _gameMode == GameMode.humanVsBot ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _setGameMode(GameMode.humanVsBot),
                child: const Text('Human vs Bot'),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: 400.0,
            height: 400.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/t.png'), fit: BoxFit.cover)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(0),
                        child: Image.asset('images/${_displayBoard[0]}.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(1),
                        child: Image.asset('images/${_displayBoard[1]}.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(2),
                        child: Image.asset('images/${_displayBoard[2]}.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(3),
                        child: Image.asset('images/${_displayBoard[3]}.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(4),
                        child: Image.asset('images/${_displayBoard[4]}.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(5),
                        child: Image.asset('images/${_displayBoard[5]}.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(6),
                        child: Image.asset('images/${_displayBoard[6]}.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(7),
                        child: Image.asset('images/${_displayBoard[7]}.png'),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: MaterialButton(
                        onPressed: () => _handleTap(8),
                        child: Image.asset('images/${_displayBoard[8]}.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: MaterialButton(
            onPressed: _resetGame, // This existing reset button can still be used
            child: Image.asset('images/reset.png'),
          ),
        ),
        // Optional: Display current game mode
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Mode: ${_gameMode == GameMode.humanVsHuman ? "Human vs Human" : "Human vs Bot"}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
