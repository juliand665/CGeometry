import CoreGraphics

public extension CGPoint {
	static var zero: Self { Self(x: 0, y: 0) }
	
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
