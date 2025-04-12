[1mdiff --git a/README.md b/README.md[m
[1mindex d3fbb52..4183f8d 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -1,69 +1,92 @@[m
[31m-PDF Compression using pypdf[m
[32m+[m[32m¡Perfecto![m
[32m+[m[32mTe voy a dar el README completo y actualizado en formato Markdown (.md), listo para copiar y pegar. 📝[m
 [m
[31m-Overview[m
[32m+[m[32m# PDF Compressor[m
 [m
[31m-This script compresses a PDF file by optimizing its content streams. It reduces the file size without significantly affecting the document quality. The script also calculates the compression percentage.[m
[32m+[m[32mThis is a simple Python script to **compress PDF files** using **Ghostscript**.[m
 [m
[31m-Requirements[m
[32m+[m[32m## Features[m
 [m
[31m-Make sure you have Python installed and install the required package:[m
[32m+[m[32m- 📄 Compress any PDF file.[m
[32m+[m[32m- 🎚️ Choose the compression quality: `screen`, `ebook`, `printer`, or `prepress`.[m
[32m+[m[32m- 📉 Show the size reduction after compression.[m
[32m+[m[32m- 🛡️ Verify if the input file exists and if the output file was created.[m
 [m
[31m-pip install pypdf[m
[32m+[m[32m## Requirements[m
 [m
[31m-Usage[m
[32m+[m[32m- **Python 3**[m
[32m+[m[32m- **Ghostscript** installed on your system.[m
 [m
[31m-Place the input PDF file in the same directory as the script and name it input.pdf.[m
[32m+[m[32mTo install Ghostscript:[m
 [m
[31m-Run the script:[m
[32m+[m[32m- On Ubuntu/Debian:[m
[32m+[m[32m  ```bash[m
[32m+[m[32m  sudo apt install ghostscript[m
[32m+[m[32mOn Windows: Download Ghostscript[m
 [m
[31m-python compress_pdf.py[m
[32m+[m[32mSetup[m
[32m+[m[32mBefore running the script, give it execution permissions:[m
 [m
[31m-Code[m
[32m+[m[32mchmod +x compress_pdf.py[m
[32m+[m[32mHow to Use[m
[32m+[m[32mRun the script like this:[m
 [m
[31m-import os[m
[31m-from pypdf import PdfReader, PdfWriter[m
[32m+[m[32m./compress_pdf.py path/to/your/file.pdf[m
[32m+[m[32mExample:[m
 [m
[31m-# Input and output file names[m
[31m-input_pdf = "input.pdf"[m
[31m-output_pdf = "output.pdf"[m
[32m+[m[32m./compress_pdf.py myfile.pdf[m
[32m+[m[32mYou can also choose the compression quality:[m
 [m
[31m-# Get the original file size[m
[31m-size_before = os.path.getsize(input_pdf)[m
 [m
[31m-# Read and write the PDF[m
[31m-reader = PdfReader(input_pdf)[m
[31m-writer = PdfWriter()[m
[32m+[m[32m./compress_pdf.py myfile.pdf --quality ebook[m
[32m+[m[32mAvailable quality options[m
[32m+[m[32mOption	Description[m
[32m+[m[32mscreen	Very small size, low quality.[m
[32m+[m[32mebook	Small size, good for eBooks.[m
[32m+[m[32mprinter	Good quality for printing.[m
[32m+[m[32mprepress	Best quality, almost original size.[m
[32m+[m[32mOutput[m
[32m+[m[32mThe compressed file will be saved in the same folder.[m
 [m
[31m-for page in reader.pages:[m
[31m-    writer.add_page(page)[m
[32m+[m[32mThe file name will have (compressed) at the end.[m
[32m+[m[32mExample: myfile(compressed).pdf[m
 [m
[31m-writer.compress_content_streams()  # Optimize content streams[m
[32m+[m[32mAfter compression, you will see:[m
 [m
[31m-with open(output_pdf, "wb") as f:[m
[31m-    writer.write(f)[m
[32m+[m[32m📂 Original file size.[m
 [m
[31m-# Get the new file size[m
[31m-size_after = os.path.getsize(output_pdf)[m
[32m+[m[32m📁 Compressed file size.[m
 [m
[31m-# Calculate reduction percentage[m
[31m-reduction = ((size_before - size_after) / size_before) * 100[m
[32m+[m[32m📉 Percentage of size reduction.[m
 [m
[31m-print(f"Original size: {size_before / 1024:.2f} KB")[m
[31m-print(f"Compressed size: {size_after / 1024:.2f} KB")[m
[31m-print(f"Reduction: {reduction:.2f}%")[m
[32m+[m[32m📍 Path where the compressed file was saved.[m
 [m
[31m-Output Example[m
[32m+[m[32mExample Output[m
[32m+[m[32myaml[m
[32m+[m[32mCopy[m
[32m+[m[32mEdit[m
[32m+[m[32m✅ Compression completed:[m
[32m+[m[32m📂 Original file: 10.23 MB[m
[32m+[m[32m📁 Compressed file: 2.34 MB[m
[32m+[m[32m📉 Reduction: 77.11%[m
[32m+[m[32m📍 Saved in: /your/path/myfile(compressed).pdf[m
[32m+[m[32mNotes[m
[32m+[m[32mIf the input file does not exist, you will see an error.[m
 [m
[31m-Original size: 2048.00 KB[m
[31m-Compressed size: 1536.00 KB[m
[31m-Reduction: 25.00%[m
[32m+[m[32mIf the output file is not created, you will also see an error.[m
 [m
[31m-Notes[m
[32m+[m[32m---[m
 [m
[31m-This method mainly optimizes content streams but does not significantly compress embedded images.[m
[32m+[m[32m### Resumen de lo que hicimos:[m
 [m
[31m-For better compression, consider using Ghostscript or additional libraries like pdf2image to resize images.[m
[32m+[m[32m- ✅ Explicamos que primero debes hacer `chmod +x`.[m
[32m+[m[32m- ✅ Mostramos que puedes correrlo usando `./`.[m
[32m+[m[32m- ✅ Mostramos cómo cambiar la calidad con `--quality`.[m
[32m+[m[32m- ✅ Explicamos qué pasa si hay errores.[m
[32m+[m[32m- ✅ Todo en un nivel de inglés B1 (sencillo y claro).[m
 [m
[31m-License[m
[32m+[m[32m---[m
 [m
[31m-This project is open-source and available under the MIT License.[m
[32m+[m[32m¿Quieres que también te dé una **versión del README en español**? 🇪🇸[m[41m  [m
[32m+[m[32mAsí tendrías las dos. 🚀[m[41m  [m
[32m+[m[32m¿O quieres que también agreguemos unos ejemplos extra, como usarlo dentro de un pequeño script bash? 🔥[m
[1mdiff --git a/pdf_compressor.py b/pdf_compressor.py[m
[1mindex c282996..c695a9d 100755[m
[1m--- a/pdf_compressor.py[m
[1m+++ b/pdf_compressor.py[m
[36m@@ -29,8 +29,8 @@[m [mdef compress_pdf(input_path, output_path, quality="screen"):[m
 [m
     print(f"\n✅ Compresión completada:")[m
     print(f"📂 Archivo original: {size_before / 1024 / 1024:.2f} MB")[m
[31m-    print(f"📁 Archivo comprimido: {size_after / 1024 / 1024:.2f} MB")[m
[31m-    print(f"📉 Reducción: {reduction:.2f}%")[m
[32m+[m[32m    print(f"📁 Archivo comprimido: {size_after / 1025 / 1024:.2f} MB")[m
[32m+[m[32m    print(f"📉 Reducción: {reduction:.3f}%")[m
     print(f"📍 Guardado en: {output_path}\n")[m
 [m
 parser = argparse.ArgumentParser(description="Comprime un archivo PDF usando Ghostscript.")[m
