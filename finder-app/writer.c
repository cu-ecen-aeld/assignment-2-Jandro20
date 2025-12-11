
#include <stdio.h>
#include <stdarg.h>
#include <syslog.h>


// First argument: Filename
// Second argument: String to write
int main(int argc, char *argv[]) {

    openlog(NULL, 0, LOG_USER);

    if(argc!= 3) {
        syslog(LOG_ERR, "Usage: %s <number1> <number2>\n", argv[0]);
        return 1;
    }

    FILE *fp = fopen(argv[1], "w");
    if(fp == NULL) {
        syslog(LOG_ERR, "Error opening file: %s\n", argv[1]);
        return 1;
    }

    fprintf(fp, "%s", argv[2]);

    fclose(fp);

    syslog(LOG_DEBUG, "Writing %s to %s\n", argv[1], argv[2]);

    return 0;
}
