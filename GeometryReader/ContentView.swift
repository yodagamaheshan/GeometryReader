//
//  ContentView.swift
//  GeometryReader
//
//  Created by Heshan Yodagama on 2/9/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            .border(Color.black)
            MyRectangle()
            .border(Color.black)
        }
        .frame(width: 150, height: 100)
        .border(Color.black)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyRectangle: View {
    var body: some View {
        GeometryReader { (geometry) in

            Rectangle()
                .path(in: CGRect(x: geometry.size.width + 5, y: 0, width: geometry.size.width/2, height: geometry.size.height/2))
                .fill(Color.blue)
        }
        
    }
}
