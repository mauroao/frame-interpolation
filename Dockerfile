FROM gcr.io/deeplearning-platform-release/tf2-gpu.2-6:latest
WORKDIR /app
RUN apt update
RUN apt install -y ffmpeg
RUN python3 -m pip install --upgrade pip
COPY . .
RUN pip3 install -r requirements.txt || true
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "./entrypoint.sh" ]
