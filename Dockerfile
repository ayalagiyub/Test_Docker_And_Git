# השתמש בדמות פייתון רשמית (לא Alpine)
FROM python:3.12-slim

# הגדרת תקיית עבודה
WORKDIR /app

# העתקת קובץ הדרישות
COPY requirements.txt .

# התקנת ספריות
RUN pip install --no-cache-dir -r requirements.txt

# העתקת קובץ האפליקציה
COPY convert_image_to_pdf.py .

# הפקודה שתופעל בקונטיינר
CMD ["python", "convert_image_to_pdf.py"]

