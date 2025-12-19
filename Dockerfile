FROM python:3.9-slim

RUN useradd -m appuser
USER appuser

WORKDIR /app

COPY --chown=appuser requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY --chown=appuser app.py .

CMD ["python", "app.py"]
