import CoreGraphics

public extension CGVector {
	static var zero: Self { Self(dx: 0, dy: 0) }
	
	var length: CGFloat { hypot(dx, dy) }
	
	var angle: CGFloat { atan2(dy, dx) }
	
	init(angle: CGFloat, length: CGFloat) {
		self.init(dx: cos(angle) * length, dy: sin(angle) * length)
	}
	
	init(_ point: CGPoint) {
		dx = point.x
		dy = point.y
	}
	
	init(_ size: CGSize) {
		dx = size.width
		dy = size.height
	}
	
	func clamped(to length: CGFloat) -> Self {
		let len = self.length
		
		if len > length {
			return self * (length / len)
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
	
	// MARK: Vector × Vector
	
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
	
	static func * (lhs: Self, rhs: Self) -> Self {
		Self(
			dx: lhs.dx * rhs.dx,
			dy: lhs.dy * rhs.dy
		)
	}
	
	static func *= (lhs: inout Self, rhs: Self) {
		lhs.dx *= rhs.dx
		lhs.dy *= rhs.dy
	}
	
	static func / (lhs: Self, rhs: Self) -> Self {
		Self(
			dx: lhs.dx / rhs.dx,
			dy: lhs.dy / rhs.dy
		)
	}
	
	static func /= (lhs: inout Self, rhs: Self) {
		lhs.dx /= rhs.dx
		lhs.dy /= rhs.dy
	}
	
	// MARK: Vector × Float
	
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
