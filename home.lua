--[[pod_format="raw",created="2025-04-05 21:52:03",modified="2025-04-05 22:29:30",revision=21]]
title = "Meivuu's Stuff"

_init = function()
	gui = create_gui{
		x = 0, y = 28, width = 300, height = 200-28
	}
	
	content = gui:attach{
		x = 0, y = 0, width = 300, height = 250,
		draw = function(self)
			print([[
Hello! Welcome to my PicoNet site!
It's very much under construction
right now; I'm very busy with
university work and when I do
get the chance to work on projects,
I usually spend time working on
the Super PicoNet Explorer
web browser. So for now, here's
some downloads for a few projects
that I've made in Picotron and my
PICO-8 game Train Journey for
Windows.
			]], 10, 10)
		end
	}
	local buttons_top_y = 150
	content:attach_button{x = 10, y = buttons_top_y, label = "Amateur 3D renderer",
		tap = function()
			download(fetch_web_only("https://raw.githubusercontent.com/May0san/piconetdemo/refs/heads/main/3dGraphics.p64"),"Amateur-3d.p64")
		end
	}
	content:attach_button{x = 10, y = buttons_top_y + 20, label = "City View Wallpaper",
		tap = function()
			download(fetch_web_only("https://www.lexaloffle.com/bbs/cposts/ci/cityview-9.p64.png"),"CityView.p64.png")
		end
	}
	content:attach_button{x = 10, y = buttons_top_y + 40, label = "Snow Falling Screensaver",
		tap = function()
			download(fetch_web_only("https://www.lexaloffle.com/bbs/cposts/sc/screensnower-1.p64.png"),"ScreenSnower.p64.png")
		end
	}
	content:attach_button{x = 10, y = buttons_top_y + 60, label = "PICO-8: Train Journey (for Windows)",
		tap = function()
			download(fetch_web_only("https://github.com/May0san/piconetdemo/raw/refs/heads/main/TrainJourney_windows.zip"),"TrainJourney_windows.zip")
		end
	}
	
	gui:attach_scrollbars()
end

function _update()
	gui:update_all()
end

function _draw()
	gui:draw_all()
end