#!/usr/bin/python3

def generate_username():
    true_username="wiener"
    victim="carlos"

    # create list of username contains carlos for 100 times
    with open("username-carlos.lst", "w") as f:
        for i in range(100):
            f.write(victim+"\n")
    f.close()
    # add true username for first line and every 3rd line
    with open("username-carlos.lst", "w+") as lines:
        for line in lines:
            if not line % 4:
                line.write(true_username)

generate_username()

