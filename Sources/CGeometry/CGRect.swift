import CoreGraphics

public extension CGRect {
	// MARK: - Rect × Size
	
	/// multiplies both origin and size by the given scale
	static func * (rect: Self, scale: CGSize) -> Self {
		Self(
			origin: rect.origin * scale,
			size: rect.size * scale
		)
	}
	
	/// multiplies both origin and size by the given scale
	static func * (scale: CGSize, rect: Self) -> Self {
		Self(
			origin: rect.origin * scale,
			size: rect.size * scale
		)
	}
	
	/// multiplies both origin and size by the given scale
	static func *= (rect: inout Self, scale: CGSize) {
		rect.origin *= scale
		rect.size *= scale
	}
	
	/// divides both origin and size by the given scale
	static func / (rect: Self, scale: CGSize) -> Self {
		Self(
			origin: rect.origin / scale,
			size: rect.size / scale
		)
	}
	
	/// divides both origin and size by the given scale
	static func /= (rect: inout Self, scale: CGSize) {
		rect.origin /= scale
		rect.size /= scale
	}
	
	// MARK: - Rect × Float
	
	/// multiplies both origin and size by the given scale
	static func * (rect: Self, scale: CGFloat) -> Self {
		Self(
			origin: rect.origin * scale,
			size: rect.size * scale
		)
	}
	
	/// multiplies both origin and size by the given scale
	static func * (scale: CGFloat, rect: Self) -> Self {
		Self(
			origin: rect.origin * scale,
			size: rect.size * scale
		)
	}
	
	/// multiplies both origin and size by the given scale
	static func *= (rect: inout Self, scale: CGFloat) {
		rect.origin *= scale
		rect.size *= scale
	}
	
	/// divides both origin and size by the given scale
	static func / (rect: Self, scale: CGFloat) -> Self {
		Self(
			origin: rect.origin / scale,
			size: rect.size / scale
		)
	}
	
	/// divides both origin and size by the given scale
	static func /= (rect: inout Self, scale: CGFloat) {
		rect.origin /= scale
		rect.size /= scale
	}
}
