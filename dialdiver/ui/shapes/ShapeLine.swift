//
//  ShapeLine.swift
//  dialdiver
//
//  Created by Damian Grosu on 30.04.2024.
//

import SwiftUI

struct LineShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        return path
    }
}

