//
//  ContentView.swift
//  ios-weather-app
//
//  Created by Cyrus Burns on 10/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                summaryView
                Spacer()
                hourlyForcast
                Spacer()
                tenDayView
            }
            .padding()
        }
        .background(.blue)
   
    }
    
    var summaryView: some View {
        VStack {
            Text("Boston")
                .font(Font.system(size: 30))
                .foregroundColor(.white)
            Text("53")
                .font(Font.system(size: 100))
                .fontWeight(.thin)
                .foregroundColor(.white)
            Text("Clear")
                .font(Font.system(size: 20))
                .foregroundColor(.white)
            Text("H:70 L:40")
                .font(Font.system(size: 20))
                .foregroundColor(.white)
        }
        .padding(.bottom, 56)
    }
    
    var hourlyForcast: some View {
        VStack {
            Text("Sunny conditions will continue for the rest of the day. Wind gusts are up to 18 mph.")
                .font(Font.system(size: 14))
                .fontWeight(.medium)
                .padding(.bottom, 6)
                .padding(.horizontal, 7)
                .foregroundColor(.white)
                .shadow(radius: 2)
            
            Divider()
                .background(.white)
                .padding(.bottom, 4)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<23) { _ in
                        VStack {
                            Text("5PM")
                                .font(Font.system(size: 16))
                                .foregroundColor(.white)
                            Text("🌤")
                                .padding(.vertical, 5)
                            Text("45")
                                .font(Font.system(size: 22))
                                .foregroundColor(.white)
                          
                        }
                        .padding(.horizontal, 9)
                    }
                }
            }
            
        }
        .scenePadding(.vertical)
        .background(Color.white.opacity(0.01))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
    }
    
    var tenDayView: some View {
        VStack(alignment: .leading) {
            Text("10-DAY FORECAST")
                .font(Font.system(size: 14))
                .fontWeight(.medium)
                .padding(.bottom, 5)
                .foregroundColor(.white)
                .shadow(radius: 2)
                .opacity(0.6)
            
            ForEach(0..<10) {_ in
                Divider()
                    .background(.white)
                
                HStack {
                    Text("Today")
                        .font(Font.system(size: 22))
                        .foregroundColor(.white)
                    
                    Spacer()
                        .frame(maxWidth: 30)
                    
                    Text("🌤")
                    
                    Spacer()
                        .frame(maxWidth: 40)
                    
                    Text("51")
                        .font(Font.system(size: 22))
                        .foregroundColor(.white)
                    LinearGradient(
                            gradient: Gradient(colors: [.yellow, .orange]),
                            startPoint: .leading,
                            endPoint: .trailing
                                )
                                .frame(height: 4)
                                .cornerRadius(2)
                                .padding(.horizontal, 5)
                    Text("72")
                        .font(Font.system(size: 22))
                        .foregroundColor(.white)
                    
                
                }
                
         
            }
            
            Divider()
                .background(.white)
            
         
        }
        .padding()
        .background(Color.white.opacity(0.01))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
    }
}

#Preview {
    ContentView()
}
