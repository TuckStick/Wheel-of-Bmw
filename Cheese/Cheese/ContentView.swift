//
//  ContentView.swift
//  Cheese
//
//  Created by AM Student on 10/21/24.
//
import SwiftUI

struct ContentView: View {

    @State var selected = 0

    var body: some View {
        VStack(alignment: .center) {
            Text("Wheel of Bmw")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, 50)

            TabView(selection: $selected) {
                ForEach(1...4, id: \.self) { index in
                    ZStack {
                        GeometryReader { reader in
                            Image("p\(index)")
                                .resizable()
                                .frame(width: 400, height: 400)
                                .aspectRatio(contentMode: .fill)
                                .offset(x: -reader.frame(in: .global).minX)
                        }
                        .frame(height: 400.0)
                        .cornerRadius(15)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(
                            color: Color.black.opacity(0.2), radius: 5, x: 5,
                            y: 5
                        )
                        .shadow(
                            color: Color.black.opacity(0.2), radius: 5, x: -5,
                            y: 5
                        )
                        .padding(.horizontal, 25)
                        Circle()
                            .fill(Color.white)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Image("p5")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                            )
                            // .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .offset(x: 160, y: 190)
                    }
                }
                .padding(.bottom, 80)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
