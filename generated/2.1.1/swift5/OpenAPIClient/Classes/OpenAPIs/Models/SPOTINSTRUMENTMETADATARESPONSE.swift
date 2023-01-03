//
// SPOTINSTRUMENTMETADATARESPONSE.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SPOTINSTRUMENTMETADATARESPONSE: Codable, JSONEncodable, Hashable {

    public var data: [String: SPOTINSTRUMENTMETADATA]?
    public var err: SPOTINSTRUMENTMARKETDATARESPONSEErr?

    public init(data: [String: SPOTINSTRUMENTMETADATA]? = nil, err: SPOTINSTRUMENTMARKETDATARESPONSEErr? = nil) {
        self.data = data
        self.err = err
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data = "Data"
        case err = "Err"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(err, forKey: .err)
    }
}

