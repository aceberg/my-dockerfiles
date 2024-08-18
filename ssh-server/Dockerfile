FROM alpine

RUN apk add --no-cache openssh-server tzdata && \
    adduser -D sshuser && passwd -u sshuser && ssh-keygen -A
    
RUN mkdir /home/sshuser/.ssh && \
    chown sshuser:sshuser /home/sshuser/.ssh && \
    chmod 700 /home/sshuser/.ssh

ENTRYPOINT ["/usr/sbin/sshd", "-De", "-f", "/etc/ssh/sshd_config", "-o", "AllowTcpForwarding=yes"]
CMD ["-p", "2222"]