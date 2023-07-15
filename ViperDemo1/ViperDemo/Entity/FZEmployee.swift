//
//  FZEmployee.swift
//  ViperDemo
//
//  Created by Fauad Anwar on 16/11/22.
//
import Foundation

struct FZEmployee {
    let empID = UUID()
    let name: String
    let department: String
}

extension FZEmployee
{
    static func previewList() -> [FZEmployee] {
        return [FZEmployee(name: "Aman", department: "iOS"), FZEmployee(name: "Ankesh", department: "Android"), FZEmployee(name: "Bhagyashree", department: "Android"), FZEmployee(name: "Poonam", department: "iOS")]
    }
}

