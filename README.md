PDF Compression using pypdf

Overview

This script compresses a PDF file by optimizing its content streams. It reduces the file size without significantly affecting the document quality. The script also calculates the compression percentage.

Requirements

Make sure you have Python installed and install the required package:

pip install pypdf

Usage

Place the input PDF file in the same directory as the script and name it input.pdf.

Run the script:

python compress_pdf.py

Code

import os
from pypdf import PdfReader, PdfWriter

# Input and output file names
input_pdf = "input.pdf"
output_pdf = "output.pdf"

# Get the original file size
size_before = os.path.getsize(input_pdf)

# Read and write the PDF
reader = PdfReader(input_pdf)
writer = PdfWriter()

for page in reader.pages:
    writer.add_page(page)

writer.compress_content_streams()  # Optimize content streams

with open(output_pdf, "wb") as f:
    writer.write(f)

# Get the new file size
size_after = os.path.getsize(output_pdf)

# Calculate reduction percentage
reduction = ((size_before - size_after) / size_before) * 100

print(f"Original size: {size_before / 1024:.2f} KB")
print(f"Compressed size: {size_after / 1024:.2f} KB")
print(f"Reduction: {reduction:.2f}%")

Output Example

Original size: 2048.00 KB
Compressed size: 1536.00 KB
Reduction: 25.00%

Notes

This method mainly optimizes content streams but does not significantly compress embedded images.

For better compression, consider using Ghostscript or additional libraries like pdf2image to resize images.

License

This project is open-source and available under the MIT License.
