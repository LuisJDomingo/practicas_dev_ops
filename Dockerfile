# 1. ¿Qué sistema operativo base queremos? Una versión ligera de Python.
FROM python:3.9-slim

# 2. ¿En qué carpeta dentro del contenedor vamos a trabajar?
WORKDIR /app

# 3. Copiamos tu script de tu PC al contenedor.
COPY servidor.py .

# 4. ¿Qué comando debe ejecutar el contenedor al arrancar?
CMD ["python", "servidor.py"]
