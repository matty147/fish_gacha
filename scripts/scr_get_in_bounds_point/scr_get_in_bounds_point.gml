/// Function to clamp a position to bounds by stepping toward it
/// @param x1 Start X
/// @param y1 Start Y
/// @param x2 Target X (can be out-of-bounds)
/// @param y2 Target Y
/// @param step Step size (e.g., 1)
/// @param bound_left
/// @param bound_top
/// @param bound_right
/// @param bound_bottom
/// @param margin
function get_in_bounds_point(x1, y1, x2, y2, step, bound_left, bound_top, bound_right, bound_bottom, margin) {
    var dx = x2 - x1;
    var dy = y2 - y1;
    var dist = point_distance(x1, y1, x2, y2);
    
    if (dist == 0) return [x1, y1];

    var dir = point_direction(x1, y1, x2, y2);
    var steps = floor(dist / step);
    
    var last_valid_x = x1;
    var last_valid_y = y1;

    for (var i = 1; i <= steps; i++) {
        var test_x = x1 + lengthdir_x(i * step, dir);
        var test_y = y1 + lengthdir_y(i * step, dir);

        if (test_x < bound_left + margin || test_x > bound_right - margin|| test_y < bound_top + margin|| test_y > bound_bottom - margin) {
            // We've gone out of bounds — return last valid point
            return [last_valid_x, last_valid_y];
        }
        last_valid_x = test_x;
        last_valid_y = test_y;
    }

    // All steps are valid — final position is safe
    return [x2, y2];
}