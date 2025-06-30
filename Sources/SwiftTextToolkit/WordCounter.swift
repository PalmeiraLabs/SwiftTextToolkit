//
//  WordCounter.swift
//  
//
//  Created by Agustin Palmeira on 26/06/2025.
//

import Foundation

/// A utility that provides functions to count words and characters in a given text.
public struct WordCounter {

    /// Creates a new instance of `WordCounter`.
    public init() {}

    /// Counts the number of words in the given text.
    ///
    /// A word is defined as a sequence of letters and/or numbers, separated by any non-letter and non-number characters.
    ///
    /// - Parameter text: The input string to analyze.
    /// - Returns: The number of words in the string.
    public func countWords(in text: String) -> Int {
        text
            .split { !$0.isLetter && !$0.isNumber }
            .count
    }

    /// Counts all characters in the text, excluding whitespace and newline characters.
    ///
    /// This is useful for estimating visible or meaningful characters in user input or display content.
    ///
    /// - Parameter text: The input string to analyze.
    /// - Returns: The count of non-whitespace and non-newline characters.
    public func countCharacters(in text: String) -> Int {
        text
            .filter { !$0.isWhitespace && !$0.isNewline }
            .count
    }

    /// Counts characters excluding only **space characters** (`" "`), but keeping newlines and other whitespace.
    ///
    /// This version is slightly faster and simpler than `countCharacters`, but less strict.
    ///
    /// - Parameter text: The input string to analyze.
    /// - Returns: The number of characters excluding space characters.
    public func countCharactersWithoutSpacesOnly(in text: String) -> Int {
        text.replacingOccurrences(of: " ", with: "").count
    }
}
