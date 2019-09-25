import CoreGraphics

public extension CGSize {
	static var zero: CGSize { .init(width: 0, height: 0) }
	
	static var one: CGSize { .init(width: 1, height: 1) }
	
	init(_ point: CGPoint) {
		width = point.x
		height = point.y
	}
	
	init(_ vector: CGVector) {
		width = vector.dx
		height = vector.dy
	}
	
	// MARK: - Size × Float
	
	static func * (size: Self, scale: CGFloat) -> Self {
		Self(
			width: size.width * scale,
			height: size.height * scale
		)
	}
	
	static func * (scale: CGFloat, size: Self) -> Self {
		Self(
			width: size.width * scale,
			height: size.height * scale
		)
	}
	
	static func *= (size: inout Self, scale: CGFloat) {
		size.width *= scale
		size.height *= scale
	}
	
	static func / (size: Self, scale: CGFloat) -> Self {
		Self(
			width: size.width / scale,
			height: size.height / scale
		)
	}
	
	static func /= (size: inout Self, scale: CGFloat) {
		size.width /= scale
		size.height /= scale
	}
}
