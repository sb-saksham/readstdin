//! This is a library of Utility functions for Command Line Tools
//! So far it only has a single function to read standard input
//! # Example
//! let test: hello;
use std::io::{self, BufRead, BufReader};
pub mod colors;
/// 
pub fn read_stdin() -> String {
    let stdin = std::io::stdin();
    let mut reader = BufReader::new(stdin.lock());
    let mut line: String = String::new();
    reader.read_line(&mut line).expect("Failed to read line!");
    line.trim().to_string()
}