//
//  AppError.swift
//  WeatherApp
//
//  Created by Manny Yusuf on 1/22/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badURL(String)
    case networkError(Error)
    case badStatusCode(String)
    case jsonDecodingError(Error)
    case badMimeType(String)
    
    public func errorMessage() -> String {
        switch self {
        case .badURL(let message):
            return "bad url: \(message)"
        case .networkError(let error):
            return "network error: \(error)"
        case .badStatusCode(let message):
            return "bad status code: \(message)"
        case .jsonDecodingError(let error):
            return "decoding error: \(error)"
        case.badMimeType(let mimeType):
            return "bad mime type: \(mimeType)"
        }
    }
}
