//
//  LAModels.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 08.11.2022.
//


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "User",
             password: "1234",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let family: String
    let name: String
    let company: String
    let department: String
    let post: String
    let infoBio: String
    
    //var fullName: String {
      //  "\(name) \(family)"
   // }
    
    static func getPerson() -> Person {
        Person(family: "Привалихин",
               name: "Игорь",
               company: "IP Estate",
               department: "Отдел продаж",
               post: "Руководитель",
               infoBio: """
Привалихин Игорь - родился в г. Северодвинске Архангельской области, где проживал до 2008 года, после переехал в г. Санкт - Петербург, где жил в период с 2008 по 2013 гг. В 2013 г. в связи с рабочим предложением переехал в г. Москва, где проживает по сегодняшний день. В октябре 2022 года начал изучать язык пgограммирования Swift в учебном ресурсе Swiftbook.
""")
    }
}

