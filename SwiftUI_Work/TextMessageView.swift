//
//  TextMessageView.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/06.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import SwiftUI

struct TextMessageView: View {
    @EnvironmentObject var appData : EnvroimentObjectAppData
    var body: some View {
        Text("SeiftUI").font(.largeTitle).foregroundColor(appData.favalidColor)
    }
}

struct TextMessageView_Previews: PreviewProvider {
    static var previews: some View {
        TextMessageView()
    }
}
