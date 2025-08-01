//
//  WelcomeView.swift
//  Mini Shopee
//
//  Created by VINH KHANG on 1/8/25.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isPressed = false

    var body: some View {
        ZStack {
            LinearGradient(colors: [.orange, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Spacer()

                VStack(spacing: 10) {
                    Text("👋 Welcome to")
                        .font(.title2)
                        .foregroundColor(.white)

                    Text("Mini Shopee")
                        .font(.system(size: 44, weight: .bold))
                        .foregroundColor(.white)
                }

                Text("Shop your favorite gadgets at the best prices!")
                    .font(.title2)
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .font(.title2)


                Spacer()

                NavigationLink(destination: GreetingView()) {
                    Text("Start Shopping")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.orange)
                        .cornerRadius(17)
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
    WelcomeView()
}

