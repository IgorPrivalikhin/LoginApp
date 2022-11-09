//
//  LAModels.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 08.11.2022.
//


struct User {
    var login: String
    var password: String
    var person: Person
}

struct Person {
    var family: String
    var name: String
    var company: String
    var department: String
    var post: String
    var infoBio: String?
}

var user1 = User(
    login: "User",
    password: "1234",
    person: Person(
        family: "Привалихин",
        name: "Игорь",
        company: "IP Estate",
        department: "Отдел продаж",
        post: "Руководитель",
        infoBio: "Привалихин Игорь - родился в г. Северодвинске Архангельской области, где проживал до 2008 года, после переехал в г. Санкт - Петербург, где жил в период с 2008 по 2013 гг. В 2013 г. в связи с рабочим предложением переехал в г. Москва, где проживает по сегодняшний день. В октябре 2022 года начал изучать язык пgограммирования Swift в учебном ресурсе Swiftbook."
)
)


/* let person1 = Person(
    family: "Привалихин",
    name: "Игорь",
    company: "IP Estate",
    department: "Отдел продаж",
    post: "Руководитель",
    infoBio: "Привалихин Игорь - родился в г. Северодвинске Архангельской области, где проживал до 2008 года, после переехал в г. Санкт - Петербург, где жил в период с 2008 по 2013 гг. В 2013 г. в связи с рабочим предложением переехал в г. Москва, где проживает по сегодняшний день."
    )
    */
