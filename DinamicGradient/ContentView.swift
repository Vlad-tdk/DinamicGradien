//
//  ContentView.swift
//  GradientTest
//
//  Created by Vladimir Martemianov on 5.11.24..
//

import SwiftUI

struct MeshGradientView: View {
    @State private var points: [SIMD2<Float>] = [
        [0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
        [0.0, 0.5], [0.5, 0.5], [1.0, 0.5],
        [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]
    ]
    
    @State private var colors: [Color] = [
        .accentPurple,
        .firstBody,
        .backgroundBlue,
        .accentPurple,
        .backgroundBlue,
        .accentPurple,
        .backgroundBlue,
        .softPink,
        .brightYellow,
        .forestGreen,
        .lavender,
        .oceanBlue,
        .sunsetOrange
    ]
    
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: points,
            colors: colors
        )
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeIn(duration: 2).repeatForever()) {
                colors = colors.shuffled()
            }
        }
    }
}

struct MindfulMeshGradient_Previews: PreviewProvider {
    static var previews: some View {
        MeshGradientView()
    }
}

extension Color {
    static let accentPurple = Color(red: 0.5, green: 0.2, blue: 0.8)
    static let firstBody = Color(red: 0.5, green: 0.7, blue: 0.9)
    static let backgroundBlue = Color(red: 0.1, green: 0.1, blue: 0.9)
    static let softPink = Color(red: 1.0, green: 0.7, blue: 0.8) // мягкий розовый
    static let brightYellow = Color(red: 1.0, green: 0.9, blue: 0.2) // яркий жёлтый
    static let deepGreen = Color(red: 0.1, green: 0.5, blue: 0.2) // насыщенный зелёный
    static let lightGray = Color(red: 0.9, green: 0.9, blue: 0.9) // светло-серый
    static let darkGray = Color(red: 0.3, green: 0.3, blue: 0.3) // тёмно-серый
    static let oceanBlue = Color(red: 0.2, green: 0.6, blue: 0.8) // океанский синий
    static let sunsetOrange = Color(red: 1.0, green: 0.4, blue: 0.2) // закатный оранжевый
    static let forestGreen = Color(red: 0.0, green: 0.5, blue: 0.0) // лесной зелёный
    static let skyBlue = Color(red: 0.5, green: 0.8, blue: 1.0) // небесно-голубой
    static let lavender = Color(red: 0.7, green: 0.5, blue: 0.9) // лавандовый
}
