import Vapor
import Fluent
import FluentSQLiteDriver

public func configure(_ app: Application) throws {
    app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
    try routes(app)
}
