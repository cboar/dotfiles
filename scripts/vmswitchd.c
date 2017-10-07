//>>gcc -o vmswitchd -std=gnu11 vmswitchd.c; ./vmswitchd
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>
#include <linux/input.h>

#define DEVICE "/dev/input/by-id/usb-t.m.k._HHKB_mod-if04-event-kbd"

int keyboard;
void send_key(int code, int hwcode, int type){
	struct timeval t;
	gettimeofday(&t, NULL);
	struct input_event evs[] = {
		{ t, 4, 4, hwcode },
		{ t, 1, code, type },
		{ t, 0, 0, 0 },
	};
	if(write(keyboard, evs, sizeof(evs)) == -1){
		close(keyboard);
		keyboard = open(DEVICE, O_WRONLY);
		send_key(code, hwcode, type);
	}
}

int main (int argc, char **argv){
	do {
		keyboard = open(DEVICE, O_WRONLY);
	} while(keyboard == -1);

	char previous = '3';
	char buf[128];
	FILE* ddc;

	while(1){
		ddc = popen("ddcutil -d 1 getvcp 60 | grep 'Input Source' | sed -e 's/.*sl=0x0\\(.\\))/\\1/' 2> /dev/null", "r");
		char* rd = fgets(buf, sizeof(buf), ddc);
		pclose(ddc);
		if(rd != NULL){
			char current = buf[0];
			if(current != previous && (current == '3' || current == 'f')){
				send_key(29, 458976, 1);
				send_key(97, 458980, 1);
				send_key(29, 458976, 0);
				send_key(97, 458980, 0);
				previous = current;
			}
		}
		sleep(1);
	}

}
