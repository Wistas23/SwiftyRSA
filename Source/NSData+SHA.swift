//
//  File.swift
//  
//
//  Created by Ephraim Russo on 12/30/19.
//

import Foundation
import CommonCrypto

extension NSData {
    
    func swiftyRSASHA1() -> NSData {
        
        var output =  [UInt8]()
        let outputLength = Int(CC_SHA1_DIGEST_LENGTH)
        CC_SHA1(self.bytes, UInt32(self.length), &output)
        return NSData(bytes: &output, length: outputLength)
    }
    
    func swiftyRSASHA224() -> NSData {
        
        var output =  [UInt8]()
        let outputLength = Int(CC_SHA224_DIGEST_LENGTH)
        CC_SHA224(self.bytes, CC_LONG(self.length), &output)
        return NSData(bytes: &output, length: outputLength)
    }
    
    func swiftyRSASHA256() -> NSData {
        
        var output = [UInt8]()
        let outputLength = Int(CC_SHA256_DIGEST_LENGTH)
        CC_SHA256(self.bytes, UInt32(self.length), &output)
        return NSData(bytes: &output, length: outputLength)
    }
    
    func swiftyRSASHA384() -> NSData {
        
        var output = [UInt8]()
        let outputLength = Int(CC_SHA384_DIGEST_LENGTH)
        CC_SHA384(self.bytes, UInt32(self.length), &output)
        return NSData(bytes: &output, length: outputLength)
    }
    
    func swiftyRSASHA512() -> NSData {
        
        var output = [UInt8]()
        let outputLength = Int(CC_SHA512_DIGEST_LENGTH)
        CC_SHA512(self.bytes, UInt32(self.length), &output)
        return NSData(bytes: &output, length: outputLength)
    }
    
}
