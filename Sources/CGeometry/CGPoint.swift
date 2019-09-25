import CoreGraphics

public extension CGPoint {
	static var zero: Self { Self(x: 0, y: 0) }
	
	init(_ vector: CGVector) {
		x = vector.dx
		y = vector.dy
	}
	
	init(_ size: CGSize) {
		x = size.width
		y = size.height
	}
	
	// MARK: Point × Vector
	
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
}
