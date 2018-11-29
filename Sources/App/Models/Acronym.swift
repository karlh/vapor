import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

// This is the pre-configured SQLite model that does the same as below
extension Acronym: SQLiteModel {}

/// This is the manual way to make Acronym conform to a Fluent Model
//extension Acronym: Model {
//    typealias Database = SQLiteDatabase
//    typealias ID = Int
//
//    public static var idKey: IDKey = \Acronym.id
//}

// This allows Fluent to infer the schema since Acronym is Codable
extension Acronym: Migration {}

extension Acronym: Content {}

