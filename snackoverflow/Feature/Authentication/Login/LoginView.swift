//
//  LoginView.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
//            Image(ImageItems.Authentication.login.rawValue)
            ImageItems.Authentication.login.rawValue.images()
            Text(LocaleKeys.Login.welcomeBack.rawValue.locale())
                .font(.system(size: FontSizes.title1,weight: .semibold))
                .foregroundColor(.black)
            HTextIconfield(hint: LocaleKeys.General.emailHint.rawValue.locale(), iconName: IconItems.Login.mail.rawValue)
            HTextSecureIconfield(hint: LocaleKeys.General.passwordHint.rawValue.locale(), iconName: IconItems.Login.lock.rawValue)
                .padding(.top, PagePadding.All.normal.rawValue)
            Divider()
            NormalButtonView(onTap: {}, title: LocaleKeys.Login.createAccount.rawValue)
            Text(LocaleKeys.Login.termsAndConditions.rawValue.locale())
                .environment(\.openURL,OpenURLAction(handler: { url in
                    print(url)
                    return .discarded
                })).padding(.top, PagePadding.All.normal.rawValue)
                .foregroundColor(.gray)
                .font(.system(size: FontSizes.caption1,weight: .regular))
            Spacer()
        }.padding(.all, PagePadding.All.normal.rawValue)
    }
}

#Preview {
    LoginView()
}

struct HTextIconfield: View {
    
    let hint: LocalizedStringKey
    let iconName: String
    
    var body: some View {
        HStack {
            iconName.images()
            TextField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

struct HTextSecureIconfield: View {
    
    let hint: LocalizedStringKey
    let iconName: String
    
    var body: some View {
        HStack {
            iconName.images()
            SecureField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}
