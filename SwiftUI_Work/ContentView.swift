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
        VstackExtraView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct VstackExtraView : View {
    @State private var text : String = ""
    @State private var password : String = ""
    @State private var togle : Bool = true
    @State private var selectPicke : Int = 0
    @State private var date = Date()
    @State private var sliderValue : Float = 0.2
    var body: some View {
        VStack{
            Text("ログインフォーム")
                .font(.largeTitle)
                .fontWeight(.bold)
                .underline()
            
            TextField("Enter The Text",text : $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Enter The Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            
            ExtractedView()
            
            Toggle(isOn: $togle) {
                Text("always login")
            }
            .padding()
            
            //            Picker(selection: $selectPicke, label: Text("Fruit")) {
            //                Text("Apple").tag(1)
            //                Text("Pear").tag(2)
            //                Text("Peach").tag(3)
            //            }
            
            //            DatePicker(selection :$date, label:{Text("datePicker")})
            
            Slider(value:$sliderValue)
                .padding()
        }
    }
}


struct ExtractedView: View {
    var body: some View {
        HStack {
            Button(action:{
                // ボタン押下時の処理
            }) {
                Text("login")
            }
            
            Button(action:{
                // ボタン押下時の処理
            }) {
                Image(systemName:"lock.open")
            }
        }
    }
}
