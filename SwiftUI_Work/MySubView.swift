//
//  MySubView.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/06.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import SwiftUI

struct MySubView: View {
    
    var prefix : String
    var index : Int
    var childViewIndex : Int
    
    var displayText : String {
        return "\(prefix)(\(index))"
    }
    
    var body: some View {
        VStack {
            // ビューの外側で設定された値の文字列を設定
            Text(displayText).font(.largeTitle)
            // ネストするビューのリンクを設定
            if(index+1) < childViewIndex {
                NavigationLink(destination:MySubView(prefix: prefix,index:index+1, childViewIndex: childViewIndex), label:{Text("Go To NextLink")})
            }
        }
        .navigationBarTitle("\(displayText)", displayMode: .inline)
        .navigationBarItems(trailing: HStack{
            Button(action:{}){
                Image(systemName: "folder.badge.plus").resizable().aspectRatio(contentMode: .fit)
            }
            
            Button(action:{}){
                Image(systemName: "square.and.arrow.up").resizable().aspectRatio(contentMode: .fit)
            }
        })
    }
}

struct MySubView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MySubView(prefix:"SubLink",index: 0, childViewIndex: 3)
        }
    }
}
