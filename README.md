¡Perfecto!
Te voy a dar el README completo y actualizado en formato Markdown (.md), listo para copiar y pegar. 📝

# PDF Compressor

This is a simple Python script to **compress PDF files** using **Ghostscript**.

## Features

- 📄 Compress any PDF file.
- 🎚️ Choose the compression quality: `screen`, `ebook`, `printer`, or `prepress`.
- 📉 Show the size reduction after compression.
- 🛡️ Verify if the input file exists and if the output file was created.

## Requirements

- **Python 3**
- **Ghostscript** installed on your system.

To install Ghostscript:

- On Ubuntu/Debian:
  ```bash
  sudo apt install ghostscript
On Windows: Download Ghostscript

Setup
Before running the script, give it execution permissions:

chmod +x compress_pdf.py
How to Use
Run the script like this:

./compress_pdf.py path/to/your/file.pdf
Example:

./compress_pdf.py myfile.pdf
You can also choose the compression quality:


./compress_pdf.py myfile.pdf --quality ebook
Available quality options
Option	Description
screen	Very small size, low quality.
ebook	Small size, good for eBooks.
printer	Good quality for printing.
prepress	Best quality, almost original size.
Output
The compressed file will be saved in the same folder.

The file name will have (compressed) at the end.
Example: myfile(compressed).pdf

After compression, you will see:

📂 Original file size.

📁 Compressed file size.

📉 Percentage of size reduction.

📍 Path where the compressed file was saved.

Example Output
yaml
Copy
Edit
✅ Compression completed:
📂 Original file: 10.23 MB
📁 Compressed file: 2.34 MB
📉 Reduction: 77.11%
📍 Saved in: /your/path/myfile(compressed).pdf
Notes
If the input file does not exist, you will see an error.

If the output file is not created, you will also see an error.

---

### Resumen de lo que hicimos:

- ✅ Explicamos que primero debes hacer `chmod +x`.
- ✅ Mostramos que puedes correrlo usando `./`.
- ✅ Mostramos cómo cambiar la calidad con `--quality`.
- ✅ Explicamos qué pasa si hay errores.
- ✅ Todo en un nivel de inglés B1 (sencillo y claro).

---

¿Quieres que también te dé una **versión del README en español**? 🇪🇸  
Así tendrías las dos. 🚀  
¿O quieres que también agreguemos unos ejemplos extra, como usarlo dentro de un pequeño script bash? 🔥
