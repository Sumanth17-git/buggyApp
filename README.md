
1. OutOfMemoryError: Java heap space
 To generate ‘java.lang.OutOfMemoryError: Java heap space’ launch Buggy App with following arguments:

java -Xmx512m -jar buggyApp.jar PROBLEM_OOM
2. Memory Leak
 If you would like to simulate a memory leak without experiencing OutOfMemoryError, then launch Buggy App with the following arguments:

 java -jar buggyApp.jar PROBLEM_MEMORY
 When you launch the Buggy App with these arguments, 80% – 90% of the allocated memory will be consumed. But it will not result in OutOfMemoryError.

3. CPU spike
 If you would like the CPU consumption to go up to 80 – 90% then launch the Buggy App with following arguments:

 java -jar buggyApp.jar PROBLEM_CPU
4. Thread Leak
 If you would like the application to keep slowly spawning new threads, then launch the Buggy App with the following arguments:

java -jar buggyApp.jar PROBLEM_THREADLEAK
When you launch the Buggy App with these arguments eventually  ‘java.lang.OutOfMemoryError: Unable to create new native thread’ will be generated.

5. Deadlock
 If you would like the application to experience Deadlock, then launch the Buggy App with the following arguments:

 java -jar buggyApp.jar PROBLEM_DEADLOCK
6. Stackoverflow Error
 If you would like the application to experience ‘java.lang.StackOverflowError’, then launch the Buggy App with the following arguments:

 java -jar buggyApp.jar PROBLEM_STACKOVERFLOW
7. Blocked Threads
 If you would like to put multiple threads in BLOCKED state, then launch the Buggy App with the following arguments:

 java -jar buggyApp.jar PROBLEM_BLOCKED
8. Heavy I/O
 If you would like to simulate heavy I/O activity, then launch the Buggy App with the following arguments:

 java -jar buggyApp.jar PROBLEM_IO
When you launch buggyApp with this argument, application will create 5 unique files by name: fileIO-1.txt, fileIO-2.txt, fileIO-3.txt, fileIO-4.txt, fileIO-5.txt. Then 20 lines of contents will be written in to this file and read back again and again infinietly. It will cause heavy I/O activity on the host.

9. File Connection Leak
If you would like to simulate a FILE Connection Leak, then launch the Buggy App with the following arguments:

java -jar buggyApp.jar FILE_CONNECTION_LEAK
When you launch the ‘buggyApp’ with this argument, the application will create a file named ‘buggyapp-samplefile.txt’ and start leaking connections by opening them without closing them.

10. DB Connection Leak
If you would like to simulate a DB Connection Leak, then launch the Buggy App with the following arguments:

java -jar buggyApp.jar DB_CONNECTIONS_LEAK {DB_JDBC_URL}  {DB_USER_NAME}  {DB_PASSWORD}  {TABLE_NAME}
When you launch ‘buggyApp’ with this argument, the application will start leaking connections by establishing SQL JDBC connections and not closing them, which will eventually result in ‘out of connections’ exceptions.

11. Network Lag
If you would like to simulate a Network Lag, then launch the Buggy App with the following arguments:

java -jar buggyApp.jar NETWORK_LAG_PROXY <Port> <Millseconds>
When you launch the ‘buggyApp’ with this argument, the application will create a network delay on your server’s response by using a proxy.

12. Storage Saturation
If you would like to simulate a Fill Disk Space, then launch the Buggy App with the following arguments:

java -jar buggyApp.jar FILL_DISK_SPACE <drive path> <percentage fill>
When you launch the ‘buggyApp’ with this argument, the application will create a file on your disk by a specified size percentage, which the file will occupy your disk space.


CREDITS : https://buggyapp.ycrash.io/
