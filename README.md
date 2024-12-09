# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart:  inadequate exception handling within asynchronous functions. The `fetchData` function fetches data from a remote API. While it includes a `try-catch` block, the exception handling is incomplete.  The `catch` block merely prints the error message to the console, failing to provide robust error recovery or user feedback. 

The `bugSolution.dart` file presents an improved version with more robust error handling.