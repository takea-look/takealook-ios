protocol TklApi {
    
    func getStickers(categoryId: Int?) async throws -> [StickerResult]
    
    func getStickerCategories() async throws -> [StickerCategoryResult]
}
