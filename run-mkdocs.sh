#!/bin/bash

VENV_DIR="$(pwd)/venv"

if [ ! -f "$VENV_DIR/bin/mkdocs" ]; then
    echo "mkdocs not found in venv. Is the virtual environment set up?"
    exit 1
fi

echo "Which site would you like to serve?"
echo "  1 - Main site (port 8000)"
echo "  2 - Landing page (port 9000)"
echo "  3 - Both"
read -p "Enter choice: " siteChoice

if [ "$siteChoice" = "1" ]; then
    echo "Starting main site on port 8000..."
    "$VENV_DIR/bin/mkdocs" serve -a 0.0.0.0:8000

elif [ "$siteChoice" = "2" ]; then
    echo "Starting landing page on port 9000..."
    (cd landing-page && "$VENV_DIR/bin/mkdocs" serve -a 0.0.0.0:9000)

elif [ "$siteChoice" = "3" ]; then
    echo "Starting both sites..."
    "$VENV_DIR/bin/mkdocs" serve -a 0.0.0.0:8000 &
    (cd landing-page && "$VENV_DIR/bin/mkdocs" serve -a 0.0.0.0:9000)

else
    echo "Invalid choice."
fi