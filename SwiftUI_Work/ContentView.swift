//
//  ContentView.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/02.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userAccount : UserAccount
    
    var body: some View {
        
        //        VstackExtraView()
        //                NavigationFormSampleView()
        //                Chapter2View()
        ObservedObjectSample(userAccount: UserAccount())
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userAccount: UserAccount())
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

struct NavigationFormSampleView : View {
    @State private var textValue : String = ""
    @State private var secureValue : String = ""
    @State private var toggleValue : Bool = false
    @State private var pickerSelectedValue : Int = 0
    @State private var dateValue = Date()
    @State private var silderValue : Float = 0.2
    @State private var stepperValue : Int = 0
    
    var body: some View {
        //        VstackExtraView()
        NavigationView {
            Form {
                Text("Text")
                TextField("input text Field", text: $textValue)
                SecureField("input secure field", text:$secureValue)
                Image(systemName: "trash")
                Button(action:{}, label:{
                    Text("Button")
                })
                Toggle(isOn:$toggleValue) {
                    Text("toggle text")
                }
                Picker(selection:$pickerSelectedValue,label:Text("Picker Selected")){
                    Text("Item1").tag(1)
                    Text("Item2").tag(2)
                    Text("Item3").tag(3)
                }
                DatePicker(selection:$dateValue, label: {
                    Text("datepicker")
                })
                Slider(value: $silderValue)
                Stepper(value:$stepperValue, in: 0...10){
                    Text("stepper")
                }
            }
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

struct Chapter2View : View {
    @State private var username : String = ""
    @State private var Email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header:HStack{
                    Image(systemName: "person.crop.circle")
                    Text("HelloWorld")
                    
                }) {
                    TextField("username", text:$username)
                    TextField("E-Mail", text:$Email)
                    SecureField("password", text:$password)
                }
                Section(){
                    Button(action:{}, label:{
                        Text("Account Create")
                    })
                    Image("Image")
                        .renderingMode(.template)
                        .foregroundColor(Color.blue)
                }
            }
            .navigationBarTitle("Create Account")
            .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ObservedObjectSample : View {
    @ObservedObject var userAccount : UserAccount
    var body: some View {
        VStack {
            TextField("userName", text: $userAccount.userName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("email", text: $userAccount.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("password", text: $userAccount.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // 区切り線
            Divider()
            
            // 入力文字出力
            Text("input userName : \(self.userAccount.userName)")
            Text("input email : \(self.userAccount.email)")
            Text("input password : \(self.userAccount.password)")
            
        }
        
    }
}
