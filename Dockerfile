# 1. Sabse pehle ek chota sa Linux aur Python 3.12 ka dabba laao
FROM python:3.12-slim

# 2. Dabbe ke andar '/app' naam ka ek folder banao aur wahan jao
WORKDIR /app

# 3. Hamari samaan ki list (requirements.txt) ko dabbe mein copy karo
COPY requirements.txt .

# 4. Us list ko padh kar Gradio aur GenAI install karo
RUN pip install -r requirements.txt

# 5. Ab humara asli code (web_app.py) dabbe mein copy karo
COPY web_app.py .

# 6. Jaise hi dabba on ho, yeh command chala dena
CMD ["python3", "web_app.py"]
