Docker 下
nginx 负债均衡测试

后端是 rails web app

docker run -d -p 3003:3003 --name app3 lbnr_app -p 3003

docker run -d -p 80:80 --name lbnr_web lbnr_web
