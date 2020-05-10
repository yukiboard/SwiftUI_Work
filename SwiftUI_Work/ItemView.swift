//
//  ItemView.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/10.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    
    var imageName: String
    
    var body: some View {
        Image(imageName).resizable().aspectRatio(contentMode: .fill)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(imageName: "test1")
    }
}
