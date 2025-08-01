//
//  GreetingView.swift
//  Mini Shopee
//
//  Created by VINH KHANG on 1/8/25.
//

import SwiftUI

struct GreetingView: View {
    @State private var isPressed = false

    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Spacer()

                Text("🎉 Hello user!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Let's find something you love to buy today.")
                    .font(.title2)
                    .foregroundColor(.white.opacity(0.85))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Spacer()

                NavigationLink(destination: ContentView()) {
                    Text("Continue to Shop")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .cornerRadius(14)
                        .padding(.horizontal)
                        .scaleEffect(isPressed ? 0.95 : 1)
                        .animation(.easeInOut(duration: 0.2), value: isPressed)
                }
                .simultaneousGesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged { _ in isPressed = true }
                        .onEnded { _ in isPressed = false }
                )

                Spacer()
            }
            .padding()
        }
    }
}



#Preview {
    GreetingView()
}
