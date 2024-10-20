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
        .padding(.bottom)
    }
    
    var hourlyForcast: some View {
        VStack {
            Text("sunny conditions will continue for the rest of the day. Wind gusts are up to 18 mph.")
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
                            Text("Now")
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Text("🌤")
                                .padding(.vertical)
                            Text("45")
                                .font(.subheadline)
                                .foregroundColor(.white)
                          
                        }
                        .padding(2)
                    }
                }
            }
            
        }
        .scenePadding(.vertical)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
    }
    
    var tenDayView: some View {
        VStack {
            Text("10-DAY FORECAST")
                .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)
            
            ForEach(0..<10) {_ in
                HStack {
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    Text("🌤")
                    Text("51")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    Text("--------")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    Text("72")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            
            Divider()
                .background(.white)
            
         
        }
        .scenePadding(.vertical)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
    }
}

#Preview {
    ContentView()
}
