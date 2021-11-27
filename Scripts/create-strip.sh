#!/bin/bash

if [[ ! $4  ]]; then
	echo "Makes a horizontal strip out some icons. Please make sure to have imagemagick installed."
	echo ""
	echo "Usage: create-strip.sh <output_png_file> <space_between> <image_1> [ <image_2> ... ]"
	echo ""
	echo ""
	echo "Examples:"
	echo ""
	echo "./Scripts/create-strip.sh ~/Desktop/paymentmethods.png 5 './Assets/Payment/Sepa/Sepa-card-dark.png' './Assets/Payment/PayPal/Paypal-card-dark.png' './Assets/Credit Card/Visa/Visa-card-dark.png' './Assets/Credit Card/MasterCard/MasterCard-dark.png'"
	echo ""
	echo "./Scripts/create-strip.sh ~/Desktop/deliverymethods.png 5 './Assets/Delivery/DHL/DHL-card.png' './Assets/Delivery/DeutschePost/DeutschePost-card.png' './Assets/Delivery/dpd/dpd-card.png'"
	exit 0
fi

output="$1"
shift
space="$1"
shift
length=$#

montage "$@" -tile ${length}x1 -geometry +${space}+0 -background none $output