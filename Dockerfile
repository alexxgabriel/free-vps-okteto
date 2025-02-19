services:
    ubuntu:
        public: true
        container_name: tzchz
        image: imlala/ubuntu-xfce-vnc-novnc:latest
        ports:
            - 6080:6080
        environment: 
            - VNC_PASSWD=Trito
            - GEOMETRY=1280x768
            - TZ=Asia/Jakarta
            - DEPTH=24
        volumes: 
            - /root/Desktop
            - /home
        resources:
          cpu: 1000m
          memory: 3072Mi
          storage:
            size: 2Gi
            class: standard
