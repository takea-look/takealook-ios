protocol TklApi {
    
    func getStickers() async throws -> [StickerResult]
    
    func getStickerCategories() async throws -> [StickerCategoryResult]
}
