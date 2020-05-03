//
//  UserAccount.swift
//  SwiftUI_Work
//
//  Created by 水越侑哉也 on 2020/05/03.
//  Copyright © 2020 水越侑哉也. All rights reserved.
//

import Combine

class UserAccount : ObservableObject {
    
    @Published var userName : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
}
