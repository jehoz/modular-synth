# Dockerfile for KiCad with VNC web access
FROM kicad/kicad:9.0.6-amd64-full

USER root

# Install VNC server, window manager, and noVNC dependencies
RUN apt-get update && apt-get install -y \
    x11vnc \
    xvfb \
    fluxbox \
    xterm \
    wget \
    supervisor \
    python3 \
    python3-numpy \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install noVNC for web-based VNC access
RUN wget -qO- https://github.com/novnc/noVNC/archive/v1.4.0.tar.gz | tar xz -C /opt/ \
    && mv /opt/noVNC-1.4.0 /opt/novnc \
    && ln -s /opt/novnc/vnc.html /opt/novnc/index.html

# Install websockify for noVNC
RUN wget -qO- https://github.com/novnc/websockify/archive/v0.11.0.tar.gz | tar xz -C /opt/ \
    && mv /opt/websockify-0.11.0 /opt/novnc/utils/websockify

# Set up VNC password (default: kicad)
RUN mkdir -p /root/.vnc && \
    x11vnc -storepasswd kicad /root/.vnc/passwd

# Create working directory
WORKDIR /workspace

# Create supervisor config directory
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d

# Copy supervisor config
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose noVNC port
EXPOSE 8080

# Set display variable
ENV DISPLAY=:1

# Start supervisor
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
