//
//  Contacts Data.swift
//  Contact List
//
//  Created by user246073 on 9/14/24.
//


final class DataStore {
    let names: [String] = [
        "Igor", "Max", "Oleg", "Vlad", "Pasha", "Ira", "Kristina", "Margarita", "Lera", "Snejana"
    ]
    
    let surnames: [String] = [
        "Ivanov", "Korolev", "Petrov", "Bulgakov", "Smirnov", "Pelipenko", "Kaira", "Prudnikov", "Kondratenko", "Belko"
    ]
    
    let phoneNumbers: [String] = [
        "776-88-22-11", "776-23-26-15", "776-81-62-18", "776-18-22-12", "776-08-20-01",
        "776-77-33-11", "776-40-99-88", "776-11-22-88", "776-55-00-11", "776-42-00-11"
    ]
    
    let emails: [String] = [
        "brat@gmail.com", "krot@gmail.com", "monstr@gmail.com", "vafla@gmail.com", "lord@gmail.com",
        "kosmos@gmail.com", "nikita118@gmail.com", "fakel@gmail.com", "wtf001@gmail.com", "ogm666@gmail.com"
    ]
    
    func generatePersons() -> [Person] {
            var persons: [Person] = []
            
            var namesCopy = names.shuffled()
            var surnamesCopy = surnames.shuffled()
            var phoneNumbersCopy = phoneNumbers.shuffled()
            var emailsCopy = emails.shuffled()
            
            let count = min(namesCopy.count, surnamesCopy.count, phoneNumbersCopy.count, emailsCopy.count)
            
            for _ in 0..<count {
                let person = Person(
                    name: namesCopy.removeFirst(),
                    surname: surnamesCopy.removeFirst(),
                    phoneNumber: phoneNumbersCopy.removeFirst(),
                    email: emailsCopy.removeFirst()
                )
                persons.append(person)
            }
            
            return persons
        }
}

