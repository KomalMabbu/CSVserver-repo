# CSVserver-repo

1.
docker run -d --name csvserver infracloudio/csvserver:latest
docker ps
docker ps -a
docker stop
docker rm
2.
docker logs csvserver
3.
ls
nano gencsv.sh 
chmod +x gencsv.sh
./gencsv.sh 2 8
cat inputFile
4.
docker run -d -v $(pwd)/inputFile:/csvserver/inputdata --name csvserver_with_file infracloudio/csvserver:latest 
docker run -it -v $(pwd)/inputFile:/csvserver/inputdata --name csvserver_with_file infracloudio/csvserver:latest sh
ls -l /csvserver/inputdata
5.
docker exec -it csvserver_with_file sh
ls -l /data
sudo chown $USER:$USER inputFile
chmod 644 inputFile
netstat -tuln
docker stop
docker rm
6.
docker run -d -p 9393:9300 -v $(pwd)/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange --name csvserver_with_file infracloudio/csvserver:latest












