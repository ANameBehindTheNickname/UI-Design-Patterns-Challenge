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
		guard let errorMessage = viewModel.message else {
			controller?.errorViewController?.hideErrorMessage()
			return
		}

		controller?.errorViewController?.display(errorMessage)
	}
}
