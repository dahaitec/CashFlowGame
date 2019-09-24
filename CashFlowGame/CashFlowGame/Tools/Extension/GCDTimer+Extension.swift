//
//  GCDTimer+Extension.swift
//  CashFlowGame
//
//  Created by Sheng Zhao Huang on 2019/9/23.
//  Copyright © 2019 Sheng Zhao Huang. All rights reserved.
//

import Foundation

// swiftlint:disable identifier_name
/// GCD延时操作
///   - after: 延迟的时间
///   - handler: 事件
public func DispatchAfter(after: Double, handler:@escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + after) {
        handler()
    }
}
