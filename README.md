# HTMLs_to_PDFs

Batch convert HTML files to PDF using PowerShell and wkhtmltopdf.  
This script automatically processes all HTML files in its folder and saves the converted PDFs in an `output` directory.

## Features

- Converts all `.html` files in the script’s directory to PDF
- Uses [wkhtmltopdf](https://wkhtmltopdf.org/) for high-quality PDF generation
- Output PDFs are stored in an organized `output` folder
- Optimized conversion settings: A4, landscape, no smart shrinking

## Prerequisites

- [wkhtmltopdf](https://wkhtmltopdf.org/) installed and available in your system PATH, or know its full path

## Usage

1. **Download or clone this repository.**
2. **Place the PowerShell script in the folder containing your `.html` files.**
3. **Open PowerShell in that folder.**
4. (Optional, if you encounter execution policy errors) Run:
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```
   This temporarily allows script execution for this PowerShell session only.

5. **Run the script:**
   ```powershell
   .\convert-html-to-pdf.ps1
   ```
   - PDFs will appear in the `output` subfolder.

## Script Customization

- If `wkhtmltopdf.exe` is not in your PATH, edit the line in the script:
  ```powershell
  $wkhtmltopdf = "C:\Path\To\wkhtmltopdf.exe"
  ```
