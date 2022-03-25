import NaturalLanguage

let string = "Natural language detection"

if let language = NLLanguageRecognizer.dominantLanguage(for: string) {
    print("Detected \(language.rawValue.uppercased()) as dominant language for: \n\"\(string)\"")
} else {
    print("Could not recognize language for \(string)")
}

let languageRecognizer = NLLanguageRecognizer()
languageRecognizer.processString(string)

languageRecognizer.languageConstraints = [.english, .french, .spanish, .german]

let languageProbabilities = languageRecognizer.languageHypotheses(withMaximum: 3)

for (language, probability) in languageProbabilities {
    print("Detected \(language.rawValue.uppercased()), probability \(probability)")
}

languageRecognizer.reset()


