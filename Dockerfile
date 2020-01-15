#Dockerfile for NOAA Data Tap
FROM scratch

COPY noaa-git.sh

CMD ["/noaa-git"]
