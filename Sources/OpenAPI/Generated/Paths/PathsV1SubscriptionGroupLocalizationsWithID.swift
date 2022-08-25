// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionGroupLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionGroupLocalizations/{id}`
		public let path: String

		public func get(fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupLocalizationResponse> {
			.get(path, query: makeGetQuery(fieldsSubscriptionGroupLocalizations, include))
		}

		private func makeGetQuery(_ fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsSubscriptionGroupLocalizations: String, Codable, CaseIterable {
			case customAppName
			case locale
			case name
			case state
			case subscriptionGroup
		}

		public enum Include: String, Codable, CaseIterable {
			case subscriptionGroup
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionGroupLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}