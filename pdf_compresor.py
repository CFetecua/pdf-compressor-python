import os
from pypdf import PdfReader, PdfWriter

# Archivo de entrada y salida
input_pdf = "Bitácora de procesos desarrollados en la competencia GA3-220201501-AA4-EV02 comprimido.pdf"
output_pdf = "output.pdf"

# Obtener tamaño antes de la compresión
size_before = os.path.getsize(input_pdf)

# Leer y escribir el PDF
reader = PdfReader(input_pdf)
writer = PdfWriter()

for page in reader.pages:
    writer.add_page(page)

for page in writer.pages:
    page.compress_content_streams()  # ✅ Aplicar compresión a cada página
  # Reducir tamaño

with open(output_pdf, "wb") as f:
    writer.write(f)

# Obtener tamaño después de la compresión
size_after = os.path.getsize(output_pdf)

# Calcular la reducción
reduction = ((size_before - size_after) / size_before) * 100

print(f"Tamaño original: {size_before / 1024:.2f} KB")
print(f"Tamaño comprimido: {size_after / 1024:.2f} KB")
print(f"Reducción: {reduction:.2f}%")
