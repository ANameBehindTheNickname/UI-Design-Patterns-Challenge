//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

import Foundation

public final class FeedErrorViewController: NSObject {
	@IBOutlet public private(set) var errorView: ErrorView?

	func display(_ errorMessage: String) {
		errorView?.show(message: errorMessage)
	}

	@IBAction func hideErrorMessage() {
		errorView?.hideMessage()
	}
}
