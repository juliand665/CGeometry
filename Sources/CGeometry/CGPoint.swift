import CoreGraphics

public extension CGPoint {
	init(_ vector: CGVector) {
		self.init(
			x: vector.dx,
			y: vector.dy
		)
	}
	
	init(_ size: CGSize) {
		self.init(
			x: size.width,
			y: size.height
		)
	}
	
	/// applies the given function `transform` to both components
	func map(_ transform: (CGFloat) throws -> CGFloat) rethrows -> Self {
		Self(
			x: try transform(x),
			y: try transform(y)
		)
	}
	
	static prefix func - (point: Self) -> Self {
		Self(
			x: -point.x,
			y: -point.y
		)
	}
	
	var withFlippedAxes: Self {
		Self(x: y, y: x)
	}
	
	// MARK: - Point × Point
	
	static func - (lhs: Self, rhs: Self) -> CGVector {
		CGVector(
			dx: lhs.x - rhs.x,
			dy: lhs.y - rhs.y
		)
	}
	
	// MARK: - Point × Vector
	
	static func + (point: Self, offset: CGVector) -> Self {
		Self(
			x: point.x + offset.dx,
			y: point.y + offset.dy
		)
	}
	
	static func += (point: inout Self, offset: CGVector) {
		point.x += offset.dx
		point.y += offset.dy
	}
	
	static func - (point: Self, offset: CGVector) -> Self {
		Self(
			x: point.x - offset.dx,
			y: point.y - offset.dy
		)
	}
	
	static func -= (point: inout Self, offset: CGVector) {
		point.x -= offset.dx
		point.y -= offset.dy
	}
	
	// MARK: - Point × Size
	
	static func * (point: Self, scale: CGSize) -> Self {
		Self(
			x: point.x * scale.width,
			y: point.y * scale.height
		)
	}
	
	static func * (scale: CGSize, point: Self) -> Self {
		Self(
			x: point.x * scale.width,
			y: point.y * scale.height
		)
	}
	
	static func *= (point: inout Self, scale: CGSize) {
		point.x *= scale.width
		point.y *= scale.height
	}
	
	static func / (point: Self, scale: CGSize) -> Self {
		Self(
			x: point.x / scale.width,
			y: point.y / scale.height
		)
	}
	
	static func /= (point: inout Self, scale: CGSize) {
		point.x /= scale.width
		point.y /= scale.height
	}
	
	// MARK: - Point × Float
	
	static func * (point: Self, scale: CGFloat) -> Self {
		Self(
			x: point.x * scale,
			y: point.y * scale
		)
	}
	
	static func * (scale: CGFloat, point: Self) -> Self {
		Self(
			x: point.x * scale,
			y: point.y * scale
		)
	}
	
	static func *= (point: inout Self, scale: CGFloat) {
		point.x *= scale
		point.y *= scale
	}
	
	static func / (point: Self, scale: CGFloat) -> Self {
		Self(
			x: point.x / scale,
			y: point.y / scale
		)
	}
	
	static func /= (point: inout Self, scale: CGFloat) {
		point.x /= scale
		point.y /= scale
	}
}
