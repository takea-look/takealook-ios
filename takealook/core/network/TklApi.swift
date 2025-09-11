protocol TklApi {
    
    func getStickers() async throws -> [StickerResult]
    
    func getStickerCategories() async throws -> [StickerCategoryResult]
    
    func signIn(loginBody: LoginBody) async throws -> LoginResponse
    
    func signUp(loginBody: LoginBody) async throws -> Void
}
