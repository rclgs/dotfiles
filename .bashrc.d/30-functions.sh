# ==========================
# Functions
# ==========================
# Function to create a directory and navigate into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Function to search for a string in files
search() {
    grep -rnw . -e "$1"
}

