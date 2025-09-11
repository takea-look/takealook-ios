protocol TklApi {
    
    func getStickers(categoryId: Int?) async throws -> [StickerResult]
    
    func getStickerCategories() async throws -> [StickerCategoryResult]
    
    func signIn(loginBody: LoginBody) async throws -> LoginResponse
    
    func signUp(loginBody: LoginBody) async throws -> Void
}
