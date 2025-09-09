import Alamofire
import Foundation

class TklAfApi: TklApi {
    func getStickers(categoryId: Int? = nil) async throws -> [StickerResult] {
        let params = ["categoryId": categoryId ?? 0]
        
        return try await AF
            .request(
                baseUrlWith("stickers"),
                method: .get,
                parameters: params,
            )
            .serializingDecodable([StickerResult].self)
            .value
    }
    
    func getStickerCategories() async throws -> [StickerCategoryResult] {
        return try await AF
            .requestWith("sticker-categories")
            .serializingDecodable([StickerCategoryResult].self)
            .value
    }
}

func baseUrlWith(_ path: String) -> String {
    return "\(Environment.baseUrl)\(path)"
}

extension Session {
    
    /**
     base url 을 간편하게 적용하기 위한 extension
     
     - Parameters:
        - value : url이나, url Path 형태 둘다 가능
     */
    func requestWith(_ value: String) -> DataRequest {
        let url = if value.starts(with: "http") {
            value
        } else {
            "\(Environment.baseUrl)\(value)"
        }
                
        return self.request(url)
    }
}
