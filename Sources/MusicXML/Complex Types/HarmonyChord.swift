//
//  HarmonyChord.swift
//  MusicXML
//
//  Created by James Bean on 5/16/19.
//

import XMLCoder

// > The harmony elements are based on Humdrum's **harm
// > encoding, extended to support chord symbols in popular
// > music as well as functional harmony analysis in classical
// > music.
//
// > If there are alternate harmonies possible, this can be
// > specified using multiple harmony elements differentiated
// > by type. Explicit harmonies have all note present in the
// > music; implied have some notes missing but implied;
// > alternate represents alternate analyses.
//
// > The harmony object may be used for analysis or for
// > chord symbols. The print-object attribute controls
// > whether or not anything is printed due to the harmony
// > element. The print-frame attribute controls printing
// > of a frame or fretboard diagram. The print-style entity
// > sets the default for the harmony, but individual elements
// > can override this with their own print-style values.
//
// > A harmony element can contain many stacked chords (e.g.
// > V of II). A sequence of harmony-chord entities is used
// > for this type of secondary function, where V of II would
// > be represented by a harmony-chord with a V function
// > followed by a harmony-chord with a II function.
//
// <!ENTITY % harmony-chord "((root | function), kind,
//    inversion?, bass?, degree*)">
public struct HarmonyChord {
    public let rootOrFunction: RootOrFunction
    public let kind: Kind
    public let inversion: Inversion?
    public let bass: Bass?
    public let degree: [Degree] // NonEmpty

    public init(rootOrFunction: RootOrFunction, kind: Kind, inversion: Inversion? = nil, bass: Bass? = nil, degree: [Degree]) {
        self.rootOrFunction = rootOrFunction
        self.kind = kind
        self.inversion = inversion
        self.bass = bass
        self.degree = degree
    }
}

extension HarmonyChord {
    public enum RootOrFunction {
        case root(Root)
        case function(StyleText)
    }
}

extension HarmonyChord.RootOrFunction: Equatable { }
extension HarmonyChord.RootOrFunction: Codable {
    enum CodingKeys: String, CodingKey {
        case root
        case function
    }
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case let .root(value):
            try container.encode(value, forKey: .root)
        case let .function(value):
            try container.encode(value, forKey: .function)
        }
    }
    public init(from decoder: Decoder) throws {
        let keyed = try decoder.container(keyedBy: CodingKeys.self)
        do {
            self = .root(try keyed.decode(Root.self, forKey: .root))
        } catch {
            self = .function(try keyed.decode(StyleText.self, forKey: .function))
        }
    }

}

extension HarmonyChord.RootOrFunction.CodingKeys: XMLChoiceCodingKey { }

extension HarmonyChord: Equatable { }
extension HarmonyChord: Codable { }
