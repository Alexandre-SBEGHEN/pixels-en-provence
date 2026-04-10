//Draw application surface
gpu_set_blendenable(false);

var surface_scale = window_get_height() / surface_get_height(application_surface);
surface_x = (window_get_width() - surface_get_width(application_surface) * surface_scale) / 2;

if (!window_get_fullscreen() || INTERNAL_RESOLUTION_UPSCALING_METHOD == 0) {
	draw_surface_ext(application_surface, surface_x, 0, surface_scale, surface_scale, 0, c_white, 1);
} else {
	better_scaling_draw_surface(application_surface, surface_x, 0, surface_scale, surface_scale, 0, c_white, 1, INTERNAL_RESOLUTION_UPSCALING_METHOD);
}

gpu_set_tex_filter(false)
gpu_set_blendenable(true);