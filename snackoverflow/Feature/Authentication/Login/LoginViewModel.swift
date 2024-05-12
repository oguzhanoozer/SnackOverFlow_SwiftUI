//
//  LoginViewModel.swift
//  snackoverflow
//
//  Created by oguzhan on 10.05.2024.
//

import Foundation

class LoginViewModel: ObservableObject{
    
    @Published var emailValue: String = ""
    @Published var passwordValue: String = ""
    @Published var token: String = ""
    @Published var isLogged: Bool = false
    
    private let networkManager = NetworkManager(config: NetworkConfig(baseUrl: NetworkPath.baseUrlReqres))
 
    func onLoginUser()async{
        
        token = await onLoginUser(email: emailValue, password: passwordValue)
        isLogged = !token.isEmpty
        
    }
}

extension LoginViewModel: LoginUseCase{
    func onLoginUser(email: String, password: String) async -> String {
        guard !email.isEmpty else { return ""}
        guard !password.isEmpty else { return ""}
        
        let response = await networkManager.login(path: .login, model: LoginRequest(email: emailValue, password: passwordValue), type: LoginResponse.self)
        
        return response?.token ?? "ERROR"
    }
    
    func onSaveUserToken(token: String) -> Bool {
        return false
    }
    
    
}

protocol LoginUseCase{
    func onLoginUser(email: String, password: String) async -> String
    func onSaveUserToken(token: String) -> Bool
}
