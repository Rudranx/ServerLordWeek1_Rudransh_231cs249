![Screenshot 2024-11-02 004631](https://github.com/user-attachments/assets/a32dc6f0-20c0-4a2c-996f-f35d075eab98)
<br/>
This is a DockerFile which is used to create image of our python app.
Firstly,we are taking base image of python.Then,copy requirements.txt,which contains all the necessary dependencies required to run our application.Install flask and copy main.py file.Then,exxpose this application at port 5050.Then,there is a cmd to run this application.
<br/>
![Screenshot 2024-11-02 011723](https://github.com/user-attachments/assets/fb75c8ca-0cc8-42d1-9347-527d143cf2d2)
<br/>
This is docker-compose file which is used to launch 3 instances of our application along with nginx container over same network.
<br/>

![Screenshot 2024-11-02 011711](https://github.com/user-attachments/assets/632ac4e5-8431-42c8-a047-334b8981ec11)
<br/>
Now,our 3 apps instances along with proper nginx configuration are running.
<br/>

![Screenshot 2024-11-02 011736](https://github.com/user-attachments/assets/5e8a03c5-bba6-4cc0-80b7-c3409adf32db)
<br/>
We can access our application at port 80 by the help of nginx.Nginx config is made in way such that it distributes the traffic in round robin format.
<br/>

![Screenshot 2024-11-02 011821](https://github.com/user-attachments/assets/685e0218-85d4-4391-8e1d-2130008d64a8)
<br/>
We can see in our logs,we are getting response from different server in round-robin way
<br/>

## Best load balancing method for cron manager application:
The most appropriate load balancing method would be Least Connections (Weighted Least Connections) algorithm.
This method ensures fair distribution of the load on the basis of -
1.Server Capacity:Server with high capacity can handle more request
2.The server which have have least connections,will get a connection if request comes.
