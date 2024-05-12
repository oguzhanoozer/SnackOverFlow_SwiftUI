//
//  LoginView.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
    //            Image(ImageItems.Authentication.login.rawValue)
                Text(viewModel.token)
                ImageItems.Authentication.login.rawValue.images()
                Text(LocaleKeys.Login.welcomeBack.rawValue.locale())
                    .font(.system(size: FontSizes.title1, weight: .semibold))
                    .foregroundColor(.black)
                HTextIconfield(hint: LocaleKeys.General.emailHint.rawValue.locale(), text: $viewModel.emailValue, iconName: IconItems.Login.mail.rawValue)
                HTextSecureIconfield(hint: LocaleKeys.General.passwordHint.rawValue.locale(), text: $viewModel.passwordValue, iconName: IconItems.Login.lock.rawValue)
                    .padding(.top, PagePadding.All.normal.rawValue)
                Divider()
                NavigationLink("",isActive: $viewModel.isLogged){
                    Text("Hello")
                        .navigationBarBackButtonHidden(true)
                }
                
                Group {
                    NormalButtonView(onTap: {
                        Task{
                            await viewModel.onLoginUser()
                        }
                    }, title: LocaleKeys.Login.createAccount.rawValue)
                }
                Text(LocaleKeys.Login.terms.rawValue.locale())
                    .environment(\.openURL, OpenURLAction(handler: { url in
                        print(url)
                        return .discarded
                    })).padding(.top, PagePadding.All.normal.rawValue)
                    .foregroundColor(.gray)
                    .font(.system(size: FontSizes.caption1, weight: .regular))
                Spacer()
            }.padding(.all, PagePadding.All.normal.rawValue)
        }.modifier(ViewStatusHiddenModifier())
    }
}

#Preview {
    LoginView()
}

struct HTextIconfield: View {
    let hint: LocalizedStringKey
    var text: Binding<String>
    let iconName: String

    var body: some View {
        HStack {
            iconName.images()
            TextField(hint, text: text)
        }.modifier(TextFieldModifier())
    }
}

struct HTextSecureIconfield: View {
    let hint: LocalizedStringKey
    var text: Binding<String>
    let iconName: String

    var body: some View {
        HStack {
            iconName.images()
            SecureField(hint, text: text)
        }.modifier(TextFieldModifier())
    }
}
