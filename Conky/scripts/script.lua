--this is a lua script for use in conky
require 'cairo'

function conky_main()
    -- strings for configurations
    font = "Mono"
    font_size = 12
    text = "hello world"
    xpos, ypos = 100, 100
    red, green, blue, alpha = 1, 1, 1, 1
    font_slant = CAIRO_FONT_SLANT_NORMAL
    font_face = CAIRO_FONT_WEIGHT_NORMAL

    -- drawing lines
    --[[line_width = 1
    line_cap = CAIRO_LINE_CAP_BUTT
    red, green, blue, alpha = 1, 1, 1, 1
    startx = 100
    starty = 100
    endx = 200
    endy = 100]]--

    -- cpu usage example
    --[[cpu_perc = tonumber(conky_parse("${cpu}"))
    line_width = 1
    line_cap = CAIRO_LINE_CAP_BUTT
    red, green, blue, alpha = 1, 1, 1, 1
    startx = 100
    starty = 100
    endx = startx + cpu_perc
    endy = starty]]--

    -- drawing a triangle
    --[[line_width = 20
    line_cap = CAIRO_LINE_CAP_BUTT
    line_join = CAIRO_LINE_JOIN_MITTER
    red, green, blue, alpha = 1, 1, 1, 1
    startx = 100
    starty = 100
    pointx = startx + 100
    pointy = starty + 100
    endx = pointx - 100
    endy = pointy]]--

    --drawing a rectangle
    --[[line_width=5
    top_left_x=20
    top_left_y=20
    rec_width=100
    rec_height=50
    fill_red=1
    fill_green=1
    fill_blue=1
    fill_alpha=1
    line_red=1
    line_green=0
    line_blue=0
    line_alpha=1]]--

    -- to draw an arc/circle
    --[[center_x = 100
    center_y = 100
    radius = 50
    start_angle = 0
    --end_angle = 2 * math.pi -- same thing as 360 degrees
    end_angle = 90]]--

    -- cpu bar indicator
    --[[bar_bottom_left_x = 50
    bar_bottom_left_y = 200
    bar_width = 30
    bar_height = 100
    --set background color 1, 0, 0, 1 = fully opaque red
    bar_bg_red = 1
    bar_bg_green = 0
    bar_bg_blue = 0
    bar_bg_alpha = 1
    --set indicator colors, 1, 1, 1, 1 = fully opaque white
    bar_in_red = 1
    bar_in_green = 1
    bar_in_blue = 1
    bar_in_alpha = 1]]--

    -- cpu arc indicator
    --[[ring_center_x = 200
    ring_center_y = 200
    ring_radius = 50
    ring_width = 20
    --colors
    --set background colors, 1, 0, 0, 1 = fully opaque red
    ring_bg_red = 1
    ring_bg_green = 0
    ring_bg_blue = 0
    ring_bg_alpha = 1
    --set indicator colors, 1, 1, 1, 1 = fully opaque white
    ring_in_red = 1
    ring_in_green = 1
    ring_in_blue = 1
    ring_in_alpha = 1
    --indicator value settings
    value = conky_parse("${cpu}")
    max_value = 100]]--

    --SETTINGS FOR CPU INDICATOR BAR
    bar_bottom_left_x= 750
    bar_bottom_left_y= 200
    bar_width= 30
    bar_height= 100
    bar_value=tonumber(conky_parse("${cpu}"))
    bar_max_value=100
    --set bar background colors, 1,0,0,1 = fully opaque red
    bar_bg_red=1
    bar_bg_green=0
    bar_bg_blue=0
    bar_bg_alpha=1
    --set indicator colors, 1,1,1,1 = fully opaque white
    bar_in_red=1
    bar_in_green=1
    bar_in_blue=1
    bar_in_alpha=1
    --aditional settings
    bar_border=1 --set 1 for border or 0 for no border
    --set border color rgba
    border_red=0
    border_green=1
    border_blue=1
    border_alpha=1
    --set border thickness
    border_width=10
    border_bottom_left_x=bar_bottom_left_x-(border_width/2)
    --we [u]subtract[/u] because we are going to the [u]left[/u]
    border_bottom_left_y=bar_bottom_left_y+(border_width/2)
    --we [u]add[/u] because we are going [u]down[/u]
    brec_width=bar_width+border_width
    brec_height=bar_height+border_width
    --END OF SETTINGS

    if conky_window == nil then
	return
    end
    local cs = cairo_xlib_surface_create(conky_window.display,
	conky_window.drawable,
	conky_window.visual,
	conky_window.width,
	conky_window.height)

    cr = cairo_create(cs)
    
    -- to draw a simple text
    --[[cairo_select_font_face(cr, font, font_slant, font_face)
    cairo_set_font_size(cr, font_size)
    cairo_set_source_rgba(cr, red, green, blue, alpha)
    cairo_move_to(cr, xpos, ypos)
    cairo_show_text(cr, text)
    cairo_stroke(cr)
    ]]--

    -- to draw a line
    --[[cairo_set_line_width(cr, line_width)
    cairo_set_line_cap(cr, line_cap)
    cairo_set_source_rgba(cr, red, green, blue, alpha)
    cairo_move_to(cr, startx, starty)
    cairo_line_to(cr, endx, endy)
    cairo_stroke(cr)]]--

    -- to draw a cpu percentage
    --[[cairo_set_line_width(cr, line_width)
    cairo_set_line_cap(cr, line_cap)
    cairo_set_source_rgba(cr, red, green, blue, alpha)
    cairo_move_to(cr, startx, starty)
    cairo_line_to(cr, endx, endy)
    cairo_stroke(cr)]]--

    -- to draw a triangle
    --[[cairo_set_line_width(cr, line_width)
    cairo_set_line_cap(cr, linne_cap)
    cairo_set_source_rgba(cr, red, green, blue, alpha)
    cairo_move_to(cr, startx, starty)
    cairo_line_to(cr, pointx, pointy)
    cairo_line_to(cr, endx, endy)
    cairo_line_to(cr, startx, starty)
    cairo_set_line_join(cr, line_join)
    cairo_close_path(cr)
    cairo_stroke(cr)]]-- 

    -- a triangle with two colors(not working seg fault)
    --[[cairo_set_line_width (cr,20)
    cairo_move_to (cr,100,100)--start point
    cairo_line_to (cr,200,200)--diagonal line down
    cairo_line_to (cr,100,200)--horizontal line
    cairo_close_path (cr)--draws vertical line back to start
    cairo_set_source_rgba (cr,1,1,1,1)--white
    cairo_fill_preserve (cr)--fills in the triangle in white
    cairo_set_source_rgba (cr,1,0,0,1)--red
    cairo_stroke (cr)--draws the triangle outline in red]]--

    -- to draw a rectangle
    --[[cairo_set_line_width(cr, line_width)
    cairo_rectangle(cr, top_left_x, top_left_y, rec_width, rec_height)
    cairo_set_source_rgba(cr, fill_red, fill_green, fill_blue, fill_alpha)
    cairo_fill_preserve(cr)
    cairo_set_source_rgba(cr, line_red, line_green, line_blue, line_alpha)
    cairo_stroke(cr)]]--

    -- a circle/arc
    --[[ cairo_arc(cr, center_x, center_y, radius, start_angle, end_angle)
    cairo_arc(cr, center_x, center_y, radius, 
	(start_angle - 90) * (math.pi/180), 
	(end_angle - 90) * (math.pi/180))
    -- cairo_close_path(cr)
    cairo_stroke(cr)]]--

    -- draw background cpu bar
    --[[cairo_set_source_rgba(cr, bar_bg_red, bar_bg_green, bar_bg_blue,
	bar_bg_alpha)
    cairo_rectangle(cr, bar_bottom_left_x, bar_bottom_left_y, 
	bar_width, -bar_height)
    cairo_fill(cr)
    --draw the indicator
    cairo_set_source_rgba(cr, bar_in_red, bad_in_green, 
	bar_in_blue, bar_in_alpha) -- set indicator
    value = tonumber(conky_parse("${cpu}"))
    max_value = 100
    scale = bar_height/max_value
    indicator_height = scale * value
    cairo_rectangle(cr, bar_bottom_left_x, bar_bottom_left_y, bar_width,
	-indicator_height)
    cairo_fill(cr)]]--

    -- draw ring cpu indicator
    --draw background ring
    --[[cairo_set_line_width(cr, ring_width)
    cairo_set_source_rgba(cr, ring_bg_red, ring_bg_green, ring_bg_blue,
	ring_bg_alpha)
    cairo_arc(cr, ring_center_x, ring_center_y, ring_radius, 
	0, 2 * math.pi)
    cairo_stroke(cr)
    degrees = 360
    scale = degrees/max_value -- i.e., for every 1% increase in cpu% the arc
    -- should move an additional 3.6 degrees
    end_angle = value * scale
    --draw indicator
    cairo_set_line_width(cr, ring_width)
    end_angle = value * (360/max_value)
    cairo_set_source_rgba(cr, ring_in_red, ring_in_green, ring_in_blue,
	ring_in_alpha)
    cairo_arc(cr, ring_center_x, ring_center_y, ring_radius, 
	(-90)*(math.pi/180), (end_angle - 90)*(math.pi / 180))
    cairo_stroke(cr)]]-- 

    --DRAW BAR INDICATOR
    --draw background
    cairo_set_source_rgba (cr,bar_bg_red,bar_bg_green,bar_bg_blue,
	bar_bg_alpha)
    cairo_rectangle (cr,bar_bottom_left_x,bar_bottom_left_y,bar_width,
	-bar_height)
    cairo_fill (cr)
    --draw indicator
    cairo_set_source_rgba (cr,bar_in_red,bar_in_green,
	bar_in_blue,bar_in_alpha)--set indicator color
    scale=bar_height/bar_max_value
    indicator_height=scale*bar_value
    cairo_rectangle (cr,bar_bottom_left_x,bar_bottom_left_y,
	bar_width,-indicator_height)
    cairo_fill (cr)
    if bar_border==1 then
	cairo_set_source_rgba(cr,border_red,border_green,border_blue, 
	    border_alpha)
	cairo_set_line_width(cr,border_width)
	border_bottom_left_x=bar_bottom_left_x-(border_width/2)
	border_bottom_left_y=bar_bottom_left_y+(border_width/2)
	brec_width=bar_width+border_width
	brec_height=bar_height+border_width--remember that we need 
	--to make the 
	--value of brec_height negative at some point because we are 
	--drawing up
	cairo_rectangle(cr,border_bottom_left_x,border_bottom_left_y, 
	    brec_width,-broc_height)--we will set brec_height negative 
	    --in this line
	cairo_stroke(cr)
    end

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr = nil
end
