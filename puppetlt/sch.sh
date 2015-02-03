wkhtmltopdf --zoom "$3" -O landscape -B 0 -L 0 -T 0 -R 0 "$1" "${2}.pdf"
convert -density 200 "$2".pdf[0] -resize 1024x768 "$2".png
