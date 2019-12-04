import CoreGraphics

public extension CGSize {
	/// a size with `width` = `height` = 1
	static var one: CGSize { .init(width: 1, height: 1) }
	
	/// the minimum of the two components
	var min: CGFloat { Swift.min(width, height) }
	
	/// the maximum of the two components
	var max: CGFloat { Swift.max(width, height) }
	
	init(_ point: CGPoint) {
		self.init(
			width: point.x,
			height: point.y
		)
	}
	
	init(_ vector: CGVector) {
		self.init(
			width: vector.dx,
			height: vector.dy
		)
	}
	
	/// applies the given function `transform` to both components
	func map(_ transform: (CGFloat) throws -> CGFloat) rethrows -> Self {
		Self(
			width: try transform(width),
			height: try transform(height)
		)
	}
	
	// MARK: - Size × Size
	
	static func + (lhs: Self, rhs: Self) -> Self {
		Self(
			width: lhs.width + rhs.width,
			height: lhs.height + rhs.height
		)
	}
	
	static func += (lhs: inout Self, rhs: Self) {
		lhs.width += rhs.width
		lhs.height += rhs.height
	}
	
	static func - (lhs: Self, rhs: Self) -> Self {
		Self(
			width: lhs.width - rhs.width,
			height: lhs.height - rhs.height
		)
	}
	
	static func -= (lhs: inout Self, rhs: Self) {
		lhs.width -= rhs.width
		lhs.height -= rhs.height
	}
	
	static func * (lhs: Self, rhs: Self) -> Self {
		Self(
			width: lhs.width * rhs.width,
			height: lhs.height * rhs.height
		)
	}
	
	static func *= (lhs: inout Self, rhs: Self) {
		lhs.width *= rhs.width
		lhs.height *= rhs.height
	}
	
	static func / (lhs: Self, rhs: Self) -> Self {
		Self(
			width: lhs.width / rhs.width,
			height: lhs.height / rhs.height
		)
	}
	
	static func /= (lhs: inout Self, rhs: Self) {
		lhs.width /= rhs.width
		lhs.height /= rhs.height
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
