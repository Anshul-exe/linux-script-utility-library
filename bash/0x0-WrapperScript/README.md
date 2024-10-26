
# 0x0 Wrapper Script

A lightweight shell wrapper script for uploading files to [0x0.st](https://0x0.st/) for temporary file hosting and URL shortening. This script automates file uploads, generates a URL, and copies it directly to your clipboard using `wl-copy`. 

**Note:** This script does not yet support URL shortening. 

## Features
- Upload files to [0x0.st](https://0x0.st/) with ease.
- Automatically copies the resulting file URL to your clipboard.
- Supports files up to 512 MiB in size.
- Prevents upload of specific blocked file types.

## Requirements
- `curl`: Used to upload files to the 0x0.st service.
- `wl-copy`: Automatically copies the generated URL to the clipboard (used for Wayland; if on X11, replace `wl-copy` with `xclip` or an equivalent tool).

## Usage
```bash
0x0 <path_to_file>
```

### Options
- `-h` or `--help`: Displays usage information and guidelines.

### Example
```bash
0x0 my_document.pdf
```

### Output
Upon a successful upload, the script outputs the file’s URL and copies it to your clipboard:
```bash
https://0x0.st/abc123.pdf  copied
```

## Installation
1. Save the script to a file, e.g., `0x0.sh`.
2. Make the script executable:
   ```bash
   chmod +x 0x0.sh
   ```
3. Move it to a directory in your PATH, such as `/usr/local/bin`:
   ```bash
   sudo mv 0x0.sh /usr/local/bin/0x0
   ```

## Blocked File Types
The following file types are not supported by 0x0.st and will be blocked:
- `application/x-dosexec`
- `application/x-executable`
- `application/x-hdf5`
- `application/java-archive`
- Android APKs and system images

## Notes
- Uploaded files are available for at least 30 days and can last up to a year, while shortened URLs (when supported) do not expire.


### License
This script is open-source and provided as-is. Use it responsibly and refer to [0x0.st's website](https://0x0.st/) for more details about terms of use. 


