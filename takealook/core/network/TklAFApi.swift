import Alamofire

class TklAfApi: TklApi {
    
    func getStickers() async throws -> [StickerResult] {
        return try await AF
            .request("https://s1.takealook.my/stickers")
            .serializingDecodable([StickerResult].self)
            .value
    }
}
