// MADE BY JONATHAN LAMPTEY JR.
// THIS SCRIPT GENERATES A RANDOM PASSWORD BASED ON LENGTH OF PASSWORD WANTED


#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <unistd.h>

int main(int argc, char *argv[]){
	sleep(1);
	srand((unsigned int)(time(NULL)));
	//get length
	char *input = argv[1];	

	//change length to int
	int length = atoi(input);
	
	//generate random numbers
	char password[length];
	for(int i = 0; i < length; i++){
		int random = 33 + rand() %94;
		if(random == 94 || random == 61 || random == 44){ //remove characters that mess with microsoft excel
			random = 76;
		}
		password[i] = random;
	}
	password[length] = '\0'; //adding sentinal character
	printf("%s\n", password); //printing password
	return 0;
}

