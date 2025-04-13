# [1] build images dengan -t (tag) bernama item-app:v1, dimana code, packages, dan Dockerfile berada pada folder . (ini)
docker build -t item-app:v1 .
# [2] list semua images yang berada pada sistem docker
docker images
# [3] untuk membuat sebuah alias atau nama baru untuk docker image item-app:v1, 
#     memberikan sebuah namespace didepan dirancang untuk memisahkan local dengan registry diluar
docker tag item-app:v1 darrenmaverick/item-app:v1
# [4] login ke dockerhub dengan password pribadi
docker login
# [5] push / upload image yang telah dibikin di local ke docker hub registry untuk di pakai nantinya pada docker compose file
docker push darrenmaverick/item-app:v1