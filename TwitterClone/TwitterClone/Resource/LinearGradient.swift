//
//  LinearGradient.swift
//  TwitterClone
//
//  Created by Ataberk on 26.03.2022.
//

import Foundation
import SwiftUI

extension LinearGradient {
    public static var backgroundColor: LinearGradient { return
        LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0, green: 0.5606333613395691, blue: 0.9046587347984314, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0, green: 0.33340343832969666, blue: 0.5379921197891235, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
            endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)) }
}
