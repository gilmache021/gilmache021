#! bin/bash
echo What is the passcode?
read loginpass
expect expect.exp $(arp-scan -l | grep Raspberry | awk '{print $1}') root $loginpass
