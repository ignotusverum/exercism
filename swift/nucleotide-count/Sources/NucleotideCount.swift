//Solution goes in Sources

import Foundation

struct DNA {
    
    var strand: String
    let nucleotides: [Character] = ["A", "C", "G", "T"]
    
    init?(strand: String) {
        guard strand.contains(chars: nucleotides) || strand.count == 0 else {
            return nil
        }
        
        self.strand = strand
    }
    
    func count(_ nucleotide: String = "")-> Int {
        return strand.reduce(0, { r,c in
            c.lowercased == nucleotide.lowercased() ? r + 1 : r
        })
    }
    
    func counts()-> [String: Int] {
        return Dictionary(uniqueKeysWithValues: nucleotides.map{ ($0.string, count($0.lowercased)) })
    }
}

extension Character {
    var lowercased: String {
        return string.lowercased()
    }
    
    var string: String {
        return "\(self)"
    }
}

extension String {
    func contains(chars: [Character])-> Bool {
        return self.contains{chars.contains($0)}
    }
}
