#!/bin/bash

usage() {
	  echo -e "monitors.sh\n\tThis script sets up my xrandr monitor configurations. Helpful when using i3.\n"
	  echo "Usage:"
	  echo "  undock                          - Returns monitor configuration to standard internal display only"
	  echo "  home-dock                       - Configures laptop to use the monitors connected to my home workstation dock"
	  echo "  work-dock                       - Configures laptop to use the monitors connected to my dock at work"
}

# Home Dock Monitors?
home-dock() {
    xrandr --auto --output DP-2-1 --mode 1920x1080 --right-of DP-2-2 --output DP-2-2 --mode 1920x1080 --dpi 90
}


# Work Dock Monitors?
work-dock() {
    xrandr --auto --output HDMI3 --primary --mode 1920x1080 --left-of VGA1 --output VGA1 --mode 1920x1080 --output LVDS1 --off --dpi 100
}

# Use just standard internal laptop screen
standard() {
    echo "TODO"
    ## TODO
    ## xrandr --auto --output DP-2-1 --mode 1920x1080 --right-of DP-2-2 --output DP-2-2 --mode 1920x1080 --dpi 90
}


main() {
	  local cmd=$1

	  if [[ -z "$cmd" ]]; then
		    usage
		    exit 1
	  fi

	  if [[ $cmd == "undock" ]]; then
		    standard
    elif [[ $cmd == "home-dock" ]]; then
        home-dock
    elif [[ $cmd == "work-dock" ]]; then
        work-dock
	  else
		    usage
	  fi
}

main "$@"
