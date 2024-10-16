docker start TP5
docker exec -it TP5 make clean -C /root/Toolchain
docker exec -it TP5 make clean -C /root/
docker exec -it TP5 make -C /root/Toolchain
docker exec -it TP5 make -C /root/
docker stop TP5