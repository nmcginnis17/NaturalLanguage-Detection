import NaturalLanguage
import Foundation

let text = "Steve Jobs, Steve Wozniak, and Ronald Wayne founded Apple Computer in the garage of Steve Jobs' Los Altos home"

let tagger = NLTagger(tagSchemes: [.nameType])
tagger.string = text

tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: NLTokenUnit.word, scheme: NLTagScheme.nameType, options: [.omitPunctuation, .omitWhitespace]) { (tag, range) -> Bool in
    print(text[range])
    print(tag?.rawValue ?? "unknown")
    return true
}
