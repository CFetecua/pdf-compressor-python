import os
import argparse
import subprocess

def compress_pdf(input_path, output_path, quality="screen"):
    """Comprime un PDF usando Ghostscript."""
    if not os.path.isfile(input_path):
        print(f"❌ Error: El archivo '{input_path}' no existe.")
        return

    size_before = os.path.getsize(input_path)

    gs_command = [
        "gs", "-sDEVICE=pdfwrite", "-dCompatibilityLevel=1.4",
        "-dPDFSETTINGS=/" + quality, "-dNOPAUSE", "-dBATCH",
        "-sOutputFile=" + output_path, input_path
    ]

    subprocess.run(gs_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    if not os.path.isfile(output_path):
        print("❌ Error: No se generó el archivo comprimido.")
        return

    size_after = os.path.getsize(output_path)
    reduction = ((size_before - size_after) / size_before) * 100

    print(f"\n✅ Compresión completada:")
    print(f"📂 Archivo original: {size_before / 1024 / 1024:.2f} MB")
    print(f"📁 Archivo comprimido: {size_after / 1024 / 1024:.2f} MB")
    print(f"📉 Reducción: {reduction:.2f}%")
    print(f"📍 Guardado en: {output_path}\n")

parser = argparse.ArgumentParser(description="Comprime un archivo PDF usando Ghostscript.")
parser.add_argument("input_pdf", help="Ruta del archivo PDF a comprimir")
parser.add_argument("--quality", choices=["screen", "ebook", "printer", "prepress"],
                    default="screen", help="Nivel de compresión: screen, ebook, printer, prepress")
args = parser.parse_args()

input_path = os.path.abspath(args.input_pdf)
base_name, ext = os.path.splitext(os.path.basename(input_path))
output_path = os.path.join(os.getcwd(), f"{base_name}(compressed){ext}")

compress_pdf(input_path, output_path, args.quality)
