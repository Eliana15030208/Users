//
//  UserModel.swift
//  Users
//
//  Created by Eliana on 4/11/24.
//

import Foundation

// MARK: - UserModel
struct UserModel: Codable, Identifiable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: AddressModel
    var phone: String
    var website: String
    var company: CompanyModel
}

// MARK: - AddressModel
struct AddressModel: Codable {
    var street: String
    var suite: String
    var city: String
    var zipcode: String
    var geo: GeoModel
}

// MARK: - GeoModel
struct GeoModel: Codable {
    var lat: String
    var lng: String
}

// MARK: - CompanyModel
struct CompanyModel: Codable {
    var name: String
    var catchPhrase: String
    var bs: String
}
