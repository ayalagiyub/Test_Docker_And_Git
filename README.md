# Image to PDF Converter App

This application combines one or more images into a single PDF file.

## Build Docker Image

```bash
docker build -t image-to-pdf-app .

##RUN
### Running the Docker container

To run the Docker container with images and output directories mounted, and to set a custom PDF filename, use the following command:

```bash
 docker run -it -v $(pwd)/images:/app/images -v $(pwd)/output:/app/output -e PDF_NAME=picture_output my_image_name python /app/convert_image_to_pdf.py /app/images
