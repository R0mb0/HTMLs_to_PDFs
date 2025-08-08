# HTMLs_to_PDFs

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/e416771e31c246bc97ab4fd0d1cc2e2b)](https://app.codacy.com/gh/R0mb0/HTMLs_to_PDFs/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/R0mb0/HTMLs_to_PDFs)
[![Open Source Love svg3](https://badges.frapsoft.com/os/v3/open-source.svg?v=103)](https://github.com/R0mb0/HTMLs_to_PDFs)
[![MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/license/mit)

[![Donate](https://img.shields.io/badge/PayPal-Donate%20to%20Author-blue.svg)](http://paypal.me/R0mb0)

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
