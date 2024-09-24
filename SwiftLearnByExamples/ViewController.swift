//
//  ViewController.swift
//  SwiftLearnByExamples
//
//  Created by Pavan More on 24/09/24.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// SOLID
// S = Single Responsibilty Principle
/*
   - The Single Responsibility Principle states that: class should have only one reason to change, meaning it should have a single responsibility.
   - By keeping classes focused on a specific task, we achieve higher cohesion and reduce the potential for code duplication or bloated classes.
   - This principle helps us to keep our classes as clean as possible.
 
 Advantages:
   - Enhanced Modularity: By dividing the system into distinct features, the system becomes more modular, making it easier to understand, debug, and update.
   - Reduced Coupling: SRP reduces the interdependencies among the system’s parts, thereby reducing the risk of cascading errors across unrelated features.
   - Easier Codebase Management: With responsibilities clearly defined and isolated, managing a large codebase becomes more feasible, especially in agile environments where changes are frequent and incremental.
 */

// Consider the following example where we are fetching data from API and parsing it in the same class which violates SRP

class NetworkManager {
    func fetchData(url: URL, completion: @escaping (Result<Int, NetworkError>) -> Void) {
    }
    
    func parseData(data: Data) -> [String]? {
        return nil
    }
}

enum NetworkError: Error {
    case badURL
    case timeOutIssue
}

// Splitting these responsibilities enhances modularity and makes the code more adaptable to changes in networking or data parsing methods independently.
 
class APIService {
    func fetchData(url: URL, completion: @escaping (Result<Int, NetworkError>) -> Void) {
    }
}

class DataParser {
    func parseData(data: Data) -> [String]? {
        return nil
    }
}

// It makes code remains clean, scalable, and maintainable.
// It is not just about reducing the size of classes but about enhancing the cohesiveness and flexibility of modules in a software system.
