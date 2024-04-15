# This script fetches subdomains for a specified domain from crt.sh and saves them into a text file.
## Usage

`curl -sSL https://raw.githubusercontent.com/GlTIab/crt.sh/main/crt.sh | bash -s example.com`

OR

`bash srt.sh example.com`

Replace `example.com` with the desired domain name.

## How it works
Check if a domain argument is provided. If not, display usage instructions and exit.

Set the specified domain as the target.

Encode the target domain for use in the URL.

Download the HTML content from crt.sh for all subdomains of the specified domain.

Extract subdomains from the HTML content.

Save the extracted subdomains into a text file named `example.com-crt.txt`

Display a success message.
