**Build the Image**
docker build -t sumanth17121988/buggyapp:1 .
# Run the Docker
**1. OutOfMemoryError: Java heap space**
```bash
docker run -d -e "JAVA_OPTS=-Xms512m -Xmx512m -XX:+UseG1GC -XX:MaxGCPauseMillis=200" -e PROBLEM="PROBLEM_OOM" sumanth17121988/buggyapp:1
```
**2. CPU spike**
```bash
docker run -d -e PROBLEM="PROBLEM_CPU" sumanth17121988/buggyapp:1
```
**3. Memory Leak**
```bash
docker run -d -e PROBLEM="PROBLEM_MEMORY" sumanth17121988/buggyapp:1
```
**4.Blocked Threads**
```bash
docker run -d -e PROBLEM="PROBLEM_BLOCKED" sumanth17121988/buggyapp:1
```
**5.Heavy I/O**
```bash
docker run -d -e PROBLEM="PROBLEM_IO" sumanth17121988/buggyapp:1
```


CREDITS : https://buggyapp.ycrash.io/
