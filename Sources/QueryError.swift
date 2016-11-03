/**
 Copyright IBM Corporation 2016
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

// MARK: QueryError

/// An enumeration of errors that may occur during query construction and execution.
public enum QueryError : Error {
    /// An error in connection to the database.
    case connection(String)
    /// No result was received from the query execution.
    case noResult(String)
    /// The database generated error for the query execution.
    case databaseError(String)
    /// A syntax error occurred while constructing the query.
    case syntaxError(String)
}

extension QueryError : CustomStringConvertible {
    /// A String representation of the error.
    public var description: String {
        switch self {
        case .connection(let error):
            return error
        case .noResult(let error):
            return error
        case .databaseError(let error):
            return error
        case .syntaxError(let error):
            return error
        }
    }
}
