pdiaspora:
	g++ -g -pthread -o server main.c sock.c database.c database_common.c database_auto.c common.c protocol.c hub.c user.c bot.c memory.c

zip:
	zip pdiaspora_server_src *.c *.h makefile

send:
	cp -f pdiaspora_server.zip /mnt/removable

zip_database:
	zip -r pdiaspora_server_databases *.db server.txt