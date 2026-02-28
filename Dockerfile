FROM apache/nifi:1.23.2

# Set environment variables
ENV NIFI_WEB_HTTP_PORT=8080

# Expose NiFi port
EXPOSE 8080
