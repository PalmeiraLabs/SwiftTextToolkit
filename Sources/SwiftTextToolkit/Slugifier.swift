//
//  Slugifier.swift
//  
//
//  Created by Agustin Palmeira on 27/06/2025.
//

import Foundation

/// A utility for converting text into "slug" format — typically used for URLs or filenames.
///
/// The `Slugifier` provides three strategies, trading off between speed and thoroughness:
/// - `slugifyAdvanced`: Cleans and normalizes most punctuation and symbols, prevents repeated dashes.
/// - `slugifyModerate`: Replaces whitespaces/newlines with dashes, keeps punctuation.
/// - `slugifyFast`: Replaces only space characters with dashes, very fast but less robust.
public struct Slugifier {
    
    /// Initializes a new instance of `Slugifier`.
    public init() {}
    
    /// Creates a clean and normalized slug from a given string.
    ///
    /// This method:
    /// - Converts text to lowercase.
    /// - Replaces any character that is **not a letter or number** with `"-"`.
    /// - Avoids **consecutive dashes**.
    /// - Trims any leading or trailing dashes.
    ///
    /// Recommended when slug quality and robustness are more important than performance.
    ///
    /// - Parameter text: The original text to be slugified.
    /// - Returns: A URL/filename-safe slug string.
    public func slugifyAdvanced(text: String) -> String {
        text
            .lowercased()
            .map { $0.isLetter || $0.isNumber ? $0 : "-" } // keeps only letters/numbers
            .reduce("") { partial, char in
                if char == "-" && partial.last == "-" {
                    return partial
                }
                return partial + String(char)
            }
            .trimmingCharacters(in: CharacterSet(charactersIn: "-"))
    }

    /// Creates a moderately cleaned slug by replacing whitespace and newlines with dashes.
    ///
    /// This method:
    /// - Preserves all characters except for whitespace and newlines, which become `"-"`.
    /// - Converts the final result to lowercase.
    ///
    /// Faster than `slugifyAdvanced` but may produce less URL-friendly output.
    ///
    /// - Parameter text: The input string.
    /// - Returns: A lowercase string where spaces/newlines are replaced with dashes.
    public func slugifyModerate(text: String) -> String {
        let slugifiedTextMapped: [Character] = text.map { character -> Character in
            if character.isWhitespace || character.isNewline {
                return "-"
            }
            return character
        }
        
        return String(slugifiedTextMapped).lowercased()
    }

    /// Very fast slug conversion: replaces only space characters with dashes.
    ///
    /// This method:
    /// - Converts the text to lowercase.
    /// - Replaces `" "` (space characters) with `"-"`.
    /// - Leaves all other characters unchanged, including punctuation and newlines.
    ///
    /// Useful when performance is key and full normalization isn't required.
    ///
    /// - Parameter text: The input string.
    /// - Returns: A lowercase string with spaces replaced by dashes.
    public func slugifyFast(text: String) -> String {
        text.lowercased().replacingOccurrences(of: " ", with: "-")
    }
}
