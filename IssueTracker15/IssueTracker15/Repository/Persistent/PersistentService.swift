//
//  PersistentService.swift
//  IssueTracker15
//
//  Created by 백상휘 on 2022/06/15.
//

import Foundation
import Combine

class PersistentService: ServiceLayer {
    typealias DataResult = Data
    
    func requestFromUseCase(type: ServiceType) -> AnyPublisher<DataResult, Error>? {
        return nil
    }
}
