// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos.WithID {
	public var appInfoLocalizations: AppInfoLocalizations {
		AppInfoLocalizations(path: path + "/appInfoLocalizations")
	}

	public struct AppInfoLocalizations {
		/// Path: `/v1/appInfos/{id}/appInfoLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appInfos_appInfoLocalizations_getToManyRelated")
		}

		public struct GetParameters {
			public var filterLocale: [String]?
			public var fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case subtitle
				case privacyPolicyURL = "privacyPolicyUrl"
				case privacyChoicesURL = "privacyChoicesUrl"
				case privacyPolicyText
				case appInfo
			}

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case appStoreState
				case state
				case appStoreAgeRating
				case australiaAgeRating
				case brazilAgeRating
				case brazilAgeRatingV2
				case franceAgeRating
				case koreaAgeRating
				case kidsAgeBand
				case app
				case ageRatingDeclaration
				case appInfoLocalizations
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public enum Include: String, Codable, CaseIterable {
				case appInfo
			}

			public init(filterLocale: [String]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterLocale = filterLocale
				self.fieldsAppInfoLocalizations = fieldsAppInfoLocalizations
				self.fieldsAppInfos = fieldsAppInfos
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterLocale, forKey: "filter[locale]")
				encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
