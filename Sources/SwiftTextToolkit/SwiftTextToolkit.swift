//
//  SwiftTextToolkit.swift
//
//
//  Created by Agustin Palmeira on 30/06/2025.
//

/// A unified interface to all core utilities provided by the SwiftTextToolkit package.
public struct SwiftTextToolkit {

    /// Provides word and character counting utilities.
    public let wordCounter: WordCounter

    /// Provides text normalization and slugification utilities.
    public let slugifier: Slugifier

    /// Initializes a new instance of the toolkit with default components.
    public init(
        wordCounter: WordCounter = WordCounter(),
        slugifier: Slugifier = Slugifier()
    ) {
        self.wordCounter = wordCounter
        self.slugifier = slugifier
    }
}
