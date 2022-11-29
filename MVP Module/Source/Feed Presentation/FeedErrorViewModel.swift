//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

struct FeedErrorViewModel {
	let message: String?

	static var noError: Self {
		.init(message: nil)
	}

	static func error(message: String) -> Self {
		.init(message: message)
	}
}
