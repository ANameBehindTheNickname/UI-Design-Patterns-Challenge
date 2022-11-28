//
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import UIKit
import FeedFeature

final class FeedViewAdapter: FeedView, FeedErrorView {
	private weak var controller: FeedViewController?
	private let imageLoader: FeedImageDataLoader

	init(controller: FeedViewController, imageLoader: FeedImageDataLoader) {
		self.controller = controller
		self.imageLoader = imageLoader
	}

	func display(_ viewModel: FeedViewModel) {
		controller?.display(viewModel.feed.map { model in
			let adapter = FeedImageDataLoaderPresentationAdapter<WeakRefVirtualProxy<FeedImageCellController>, UIImage>(model: model, imageLoader: imageLoader)
			let view = FeedImageCellController(delegate: adapter)

			adapter.presenter = FeedImagePresenter(
				view: WeakRefVirtualProxy(view),
				imageTransformer: UIImage.init)

			return view
		})
	}

	func display(_ viewModel: FeedErrorViewModel) {
		guard let errorMessage = viewModel.errorMessage else {
			controller?.hideErrorMessage()
			return
		}

		controller?.display(errorMessage)
	}
}
