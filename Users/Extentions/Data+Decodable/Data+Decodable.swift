//
//  Data+Decodable.swift
//  Users
//
//  Created by Eliana on 4/12/24.
//

import Foundation

extension Data {
    func toModel<D: Decodable>() -> [D] {
        let decoder = JSONDecoder()
        
        let data = (try? decoder.decode([D].self, from: self)) ?? []
        return data
    }
}
