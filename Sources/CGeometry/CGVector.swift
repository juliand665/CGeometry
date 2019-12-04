import CoreGraphics

public extension CGVector {
	/// the length of the vector in space, calculated using the pythagorean theorem (`hypot(_:_:)`)
	var length: CGFloat { hypot(dx, dy) }
	
	/// angle to the x-axis, counterclockwise (e.g. π = straight up)
	var angle: CGFloat { atan2(dy, dx) }
	
	init(angle: CGFloat, length: CGFloat) {
		self.init(dx: cos(angle) * length, dy: sin(angle) * length)
	}
	
	init(_ point: CGPoint) {
		self.init(
			dx: point.x,
			dy: point.y
		)
	}
	
	init(_ size: CGSize) {
		self.init(
			dx: size.width,
			dy: size.height
		)
	}
	
	/// applies the given function `transform` to both components
	func map(_ transform: (CGFloat) throws -> CGFloat) rethrows -> Self {
		Self(
			dx: try transform(dx),
			dy: try transform(dy)
		)
	}
	
	/// scales the vector down if necessary to be no longer than `newLength`
	func clamped(to newLength: CGFloat) -> Self {
		let length = self.length
		
		if length > newLength {
			return self * (newLength / length)
		} else {
			return self
		}
	}
	
	static prefix func - (vector: Self) -> Self {
		Self(
			dx: -vector.dx,
			dy: -vector.dy
		)
	}
	
	// MARK: - Vector × Vector
	
	static func + (lhs: Self, rhs: Self) -> Self {
		Self(
			dx: lhs.dx + rhs.dx,
			dy: lhs.dy + rhs.dy
		)
	}
	
	static func += (lhs: inout Self, rhs: Self) {
		lhs.dx += rhs.dx
		lhs.dy += rhs.dy
	}
	
	static func - (lhs: Self, rhs: Self) -> Self {
		Self(
			dx: lhs.dx - rhs.dx,
			dy: lhs.dy - rhs.dy
		)
	}
	
	static func -= (lhs: inout Self, rhs: Self) {
		lhs.dx -= rhs.dx
		lhs.dy -= rhs.dy
	}
	
	// MARK: - Vector × Size
	
	static func * (vector: Self, scale: CGSize) -> Self {
		Self(
			dx: vector.dx * scale.width,
			dy: vector.dy * scale.height
		)
	}
	
	static func * (scale: CGSize, vector: Self) -> Self {
		Self(
			dx: vector.dx * scale.width,
			dy: vector.dy * scale.height
		)
	}
	
	static func *= (vector: inout Self, scale: CGSize) {
		vector.dx *= scale.width
		vector.dy *= scale.height
	}
	
	static func / (vector: Self, scale: CGSize) -> Self {
		Self(
			dx: vector.dx / scale.width,
			dy: vector.dy / scale.height
		)
	}
	
	static func /= (vector: inout Self, scale: CGSize) {
		vector.dx /= scale.width
		vector.dy /= scale.height
	}
	
	// MARK: - Vector × Float
	
	static func * (vector: Self, scale: CGFloat) -> Self {
		Self(
			dx: vector.dx * scale,
			dy: vector.dy * scale
		)
	}
	
	static func * (scale: CGFloat, vector: Self) -> Self {
		Self(
			dx: vector.dx * scale,
			dy: vector.dy * scale
		)
	}
	
	static func *= (vector: inout Self, scale: CGFloat) {
		vector.dx *= scale
		vector.dy *= scale
	}
	
	static func / (vector: Self, scale: CGFloat) -> Self {
		Self(
			dx: vector.dx / scale,
			dy: vector.dy / scale
		)
	}
	
	static func /= (vector: inout Self, scale: CGFloat) {
		vector.dx /= scale
		vector.dy /= scale
	}
}
