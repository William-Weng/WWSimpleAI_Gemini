//
//  Constant.swift
//  WWSimpleGemini
//
//  Created by William.Weng on 2024/2/29.
//

import UIKit
import WWSimpleAI_Ollama

// MARK: - enum
public extension WWSimpleAI.Gemini {
    
    /// API功能
    enum API {
        
        case chat           // 聊天問答
        case vision         // 圖片辨識功能
        case stream         // 串流功能
        
        /// 取得url
        /// - Returns: String
        func value() -> String {
            
            let model: String
            
            switch self {
            case .chat: model = "\(WWSimpleAI.Gemini.model.value()):generateContent"
            case .vision: model = "\(WWSimpleAI.Gemini.model.value())-vision:generateContent"
            case .stream: model = "\(WWSimpleAI.Gemini.model.value()):streamGenerateContent"
            }
            
            return "\(WWSimpleAI.Gemini.baseURL)/\(WWSimpleAI.Gemini.version.value())/models/\(model)"
        }
    }
    
    /// Gemini模型
    enum Model {
        
        case nano
        case pro
        case ultra
        
        /// 取得模型名稱
        /// - Returns: String
        func value() -> String {
            
            let model: String
            
            switch self {
            case .nano: model = "gemini-nano"
            case .pro: model = "gemini-pro"
            case .ultra: model = "gemini-ultra"
            }
            
            return model
        }
    }
    
    /// Gemini模型版本
    enum Version {
        
        case v1
        
        /// 取得模型版本號
        /// - Returns: String
        func value() -> String {
            
            switch self {
            case .v1: return "v1"
            }
        }
    }
    
    /// Gemini錯誤
    enum CustomError: Error {
        case error(_ error: [String: Any])
    }
}
