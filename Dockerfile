# For other Python images, check out hub.docker.com/_/python
FROM python:3.6

# Install dependencies
RUN apt update
RUN apt install libcairo2-dev -y
RUN apt install ffmpeg -y
RUN apt install texlive -y
RUN apt install texlive-latex-extra -y
RUN apt install texlive-fonts-extra -y
RUN apt install texlive-latex-recommended -y
RUN apt install texlive-science -y
RUN apt install texlive-fonts-extra -y
RUN apt install tipa -y
RUN apt install sox -y
RUN rm -rf /var/lib/apt/lists/*

# Install Manim
RUN pip install manimce

CMD "bash"
