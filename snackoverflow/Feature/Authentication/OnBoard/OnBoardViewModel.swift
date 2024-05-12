//
//  OnBoardViewModel.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import Foundation

final class OnBoardViewModel: ObservableObject {
    @Published var currentIndex: Int = 0

    @Published var isHomeRedirect: Bool = false

    private let cache = UserDefaultCache()

    private func isUserFirstLogin() -> Bool {
        return cache.read(key: .onboard).isEmpty
    }

    func removed() {
        cache.remove(key: UserCacheKeys.onboard)
    }

    func checkUserFirstLogin() {
        print(isUserFirstLogin())
        print(cache.read(key: .onboard))
        guard !isUserFirstLogin() else {
            updateCacheFirstLogin()
            return
        }
        redirectToHome()
    }

    func saveAndLoginAndRedirect() {
        updateCacheFirstLogin()
        redirectToHome()
    }

    private func redirectToHome() {
        isHomeRedirect = true
    }

    private func updateCacheFirstLogin() {
        cache.save(key: .onboard, value: UserCacheKeys.dummyValue)
    }

//    guard result.0 == true else { return }
//    guard !name.isEmpty else { return (false,nil)}
//    guard let value = Int(count) else { return (false, nil) }
//    guard let index =  items.firstIndex(where: { item in item.id == id })else { return false }
}
