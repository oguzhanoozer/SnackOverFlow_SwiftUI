//
//  LoginRequestModel.swift
//  snackoverflow
//
//  Created by oguzhan on 10.05.2024.
//

import Foundation

struct LoginRequest: Codable {
    let email, password: String?
}
