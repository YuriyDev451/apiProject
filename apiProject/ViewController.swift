//
//  ViewController.swift
//  apiProject
//
//  Created by RMAD201 on 2/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = FlightViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    
    }
    
    
    func fetchData() {
            viewModel.getList { result in
                switch result {
                case .success:
                    self.handleSuccess()
                case .failure(let error):
                    self.handleFailure(error: error)
                }
            }
        }
        
        func handleSuccess() {
            
        }
    func sa(){
        
    }
        
        func handleFailure(error : NetworkError) {
            print("network error: \(error)")
        }
    


}

