//
//  ContentView.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/02.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("SWiftUI by Code!!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.red)
            .underline()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
