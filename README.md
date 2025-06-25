# Batch Image Downloader Tool v1.0

**Created by:**  
**KRITHIK S| NextGenDev-KSK**

---
**Please refer to the BatchImageDownloaderToolv1.0_USER GUIDE.pdf for full setup and usage instructions.**

## User Guide

### Overview
The **Image Downloader Tool v1.0** is a simple and secure Windows batch utility designed to download images from a list of URLs.  
It supports automatic folder creation, detects common image formats, skips invalid links, and shows download progress in the terminal.

---

## Features

- Auto-creates `downloads` folder
- Detects file extensions (`.jpg`, `.png`, `.jpeg`, etc.)
- Skips bad links (i.e., those without valid image extensions)
- Shows live download progress
- Continues execution even if some links fail

---

## Requirements

- A Windows computer
- A working internet connection
- Notepad (or any text editor that can save `.txt` files)
- `curl` installed (pre-installed on Windows 10+)

---

## Setting Up

1. Create a new folder and name it something like `Batch Downloader`.
2. Open Notepad, paste your image links (one per line), and save the file as `img_links.txt` inside that folder.
3. Download the `image_downloader.bat` file from this GitHub repository and place it in the same folder.
4. Double-click the `.bat` file to start downloading the images automatically.

---

### Your folder should look like this:

![image](https://github.com/user-attachments/assets/df0272c1-3bb8-4fde-9323-923b9159e208)




## Notes & Tips

1. Only use image links that end with `.jpg`, `.jpeg`, `.png`, or `.gif`.
2. Links without a valid image extension will be skipped.
3. Images will be saved as `image1.jpg`, `image2.png`, and so on.
4. If a download fails, an error will appear, but the script will continue.

---

## Disclaimer

- Use only trusted image links — this tool does not scan for viruses.
- Links must end with valid image extensions (`.jpg`, `.png`, etc.) or they will be skipped.
- Broken or invalid links will fail to download.
- Downloading from non-secure `http` links is not recommended.
- You are fully responsible for the links and content you download.
- The creator (**KRITHIK S**) is not liable for any damage, loss, or misuse.
- This tool is intended for **educational and personal use only**.

---

## Credits

**Batch Image Downloader Tool v1.0**  
Created by **KRITHIK S**

Please share responsibly and avoid using the tool to download content from untrusted sources.  
This project is open for learning and personal utility only.

