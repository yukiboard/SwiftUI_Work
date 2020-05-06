//
//  ValueControllerView.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/06.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import SwiftUI

struct ValueControllerView: View {
    @Binding var x : Double
    @Binding var y : Double
    
    var body: some View {
        VStack {
            // 現在値を表示するテキスト
            Text(String(format: "%0.f,%0.f",
                        $x.wrappedValue, $y.wrappedValue))
                .font(.largeTitle)
            
            // $xの変更スライダー
            Slider(value: $x, in: 0.0...100.0)
            
            // $yの変更スライダー
            Slider(value: $y, in: 0.0...100.0)
        }
    }
}

struct ValueControllerView_Previews: PreviewProvider {
    static var previews: some View {
        ValueControllerView(x: .constant(1.0), y: .constant(0.0))
    }
}
