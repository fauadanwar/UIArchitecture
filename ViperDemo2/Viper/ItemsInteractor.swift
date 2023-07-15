//
//  ItemsInteractor.swift
//  Viper
//
//  Created by Fauad Anwar on 28/09/22.
//

import Foundation

enum FetchError: Error {
    case failed
}

protocol ItemsInteractorProtocol {
    func getItems(completionHandler: @escaping (_ result: Result<[Items], Error>) -> Void)
}

class ItemsInteractor: ItemsInteractorProtocol {
    
    func getItems(completionHandler: @escaping (Result<[Items], Error>) -> Void)
    {
        let payload: [String: Any] = [
            "token": "_17pOwQrWGln0tX1KjpVIA",
            "data": [
                "id": "cryptoUUID",
                "productName": "productName",
                "productSize": "productSize",
                "productOrderStatus": "productOrderStatus",
                "_repeat":  10
            ]
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: payload)
        let url = URL(string: "https://app.fakejson.com/q")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        // insert json data to the request
        request.httpBody = jsonData
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(.failure(FetchError.failed))
                return
            }
            do {
                let items = try JSONDecoder().decode([Items].self, from: data)
                completionHandler(.success(items))
            }
            catch
            {
                completionHandler(.failure(error))
            }
        }
        task.resume()
    }
}
