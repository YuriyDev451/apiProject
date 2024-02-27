//
//  FlightViewModel.swift
//  apiProject
//
//  Created by RMAD201 on 2/28/24.
//

import UIKit

class FlightViewModel {
    
    var flightResponse : FlightResponse? = nil
        
        func getList(completion: @escaping (Result<Void, NetworkError>)->Void) {
            let url = "https://65a7624794c2c5762da692dd.mockapi.io/api/v1/flights"
            NetworkManager.shared.fetchData(from: url, method: .get, body: nil) { (result : Result<FlightResponse, NetworkError>)  in
                switch result {
                    case .success(let flightResponse) :
                        self.flightResponse = flightResponse
                        completion(.success( () ))
                        break
                    case .failure(let error) :
                        completion(.failure(error))
                        break
                }
            }
        }

}
