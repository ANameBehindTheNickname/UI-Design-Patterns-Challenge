//
//
//  Copyright © 2022 ANameBehindTheNickname. All rights reserved.
//

final class FeedErrorViewAdapter: FeedErrorView {
	private weak var controller: FeedViewController?

	init(controller: FeedViewController) {
		self.controller = controller
	}

	func display(_ viewModel: FeedErrorViewModel) {
		guard let errorMessage = viewModel.errorMessage else {
			controller?.hideErrorMessage()
			return
		}

		controller?.display(errorMessage)
	}
}
