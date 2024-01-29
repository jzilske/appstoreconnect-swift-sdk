// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardReleases {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterLeaderboardReleases/{id}`
		public let path: String

		public func get(fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardReleaseResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboardReleases, include), id: "gameCenterLeaderboardReleases-get_instance")
		}

		private func makeGetQuery(_ fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsGameCenterLeaderboardReleases, forKey: "fields[gameCenterLeaderboardReleases]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsGameCenterLeaderboardReleases: String, Codable, CaseIterable {
			case gameCenterDetail
			case gameCenterLeaderboard
			case live
		}

		public enum Include: String, Codable, CaseIterable {
			case gameCenterDetail
			case gameCenterLeaderboard
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "gameCenterLeaderboardReleases-delete_instance")
		}
	}
}