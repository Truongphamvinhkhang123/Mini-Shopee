//
//  ContentView.swift
//  Mini Shopee Real Versions
//
//  Created by VINH KHANG on 28/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Welcome to Mini Shopee!")
                    .font(.largeTitle)
                    .padding()

                Text("Categories")
                    .font(.headline)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(["Electronics", "Fashion", "Beauty", "Groceries"], id: \.self) { category in
                            Text(category)
                                .padding()
                                .background(Color.orange.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }.padding(.horizontal)
                }

                Text("Top Picks")
                    .font(.headline)
                    .padding([.horizontal, .top])

                ScrollView {
                    VStack(spacing: 10) {
                        // Product 1
                        NavigationLink(destination: ProductDetailView1()) {
                            HStack {
                                Image("Airpod 2")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("Air Pod 2")
                                    Text("$893")
                                }
                                Spacer()
                            }
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }

                        // Product 2
                        NavigationLink(destination: ProductDetailView2()) {
                            HStack {
                                Image("iphone")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("Iphone 13")
                                    Text("$769")
                                }
                                Spacer()
                            }
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }

                        // Product 3
                        NavigationLink(destination: ProductDetailView3()) {
                            HStack {
                                Image("xiaomi")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("Xiaomi Redmi Note 12")
                                    Text("$249")
                                }
                                Spacer()
                            }
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }

                        // Product 4
                        NavigationLink(destination: ProductDetailView4()) {
                            HStack {
                                Image("sony")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("Sony WH-1000XM5")
                                    Text("$399")
                                }
                                Spacer()
                            }
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }

                        // Product 5
                        NavigationLink(destination: ProductDetailView5()) {
                            HStack {
                                Image("macbook")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding()
                                VStack(alignment: .leading) {
                                    Text("MacBook Air M2")
                                    Text("$1199")
                                }
                                Spacer()
                            }
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }
                    }
                }

                Spacer()
            }
        }
    }
}

// MARK: - Individual Product Detail Views

struct ProductDetailView1: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Airpod 2")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("AirPods 2")
                .font(.title)
            Text("The AirPods 2 offer wireless freedom with high-quality sound and seamless integration with Apple devices.")
                .padding()
            Spacer()
        }
        .navigationTitle("AirPods 2")
        .padding()
    }
}

struct ProductDetailView2: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("iphone")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Iphone 13")
                .font(.title)
            Text("The iPhone 13 is a smartphone with a 6.1-inch Super Retina XDR display, A15 Bionic chip, and a dual 12MP camera system. It features a smaller TrueDepth camera system, improved battery life, and is rated IP68 for water and dust resistance.")
                .padding()
            Spacer()
        }
        .navigationTitle("Iphone 13")
        .padding()
    }
}

struct ProductDetailView3: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("xiaomi")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Xiaomi Redmi Note 12")
                .font(.title)
            Text("A budget-friendly smartphone with solid features for everyday use.")
                .padding()
            Spacer()
        }
        .navigationTitle("Xiaomi Redmi Note 12")
        .padding()
    }
}

struct ProductDetailView4: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("sony")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Sony WH-1000XM5")
                .font(.title)
            Text("Industry-leading noise cancellation and premium sound quality.")
                .padding()
            Spacer()
        }
        .navigationTitle("Sony WH-1000XM5")
        .padding()
    }
}

struct ProductDetailView5: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("macbook")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("MacBook")
                .font(.title)
            Text("Lightweight and powerful, the MacBook Air M2 is perfect for students and professionals alike.")
                .padding()
            Spacer()
        }
        .navigationTitle("MacBook Air M2")
        .padding()
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
