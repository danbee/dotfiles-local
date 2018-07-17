#!/bin/bash

SSHUTTLE_CONNECTED="iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAKGSURBVFhHvZc/SBxBFIevCAGr2FgoeOehlYIWpoh2WgUE+3iH12hnkTJKwCZdmnQpbcTK3kK0CegeIoIogViInY1gYano79N7x2Zubndu3fMHH7h7szNv3rw/Y+GNNSF+i1NxI76LN9GM2BWPDhjRVRXFtnAXNvBEV/RO4N478Ud8FBizJNi1GcBx5C4WY2csgAELYkSYasIMICZyU4/4Ke6FLWDwblWgPsE7YiI3EWQXwl04DkbgCeCZb16tD4JzdBdrB+4nKKFFTPZL/BVX4p8ggLYErv0qOM85MS/WxbXwLdQOApC4ICBbtCF8H+WNxUJTnMmAIIj2hO+jvCA7SNH/xEvc3W0jCEJStEWcKwO6bQRx1FabgkFxI/Yb7/KAFGXOtiIDiHwbTJTiLneirATl/LSwKkaqmEGvpaN6T277JnHBQKv3SVAn8G6wSBGKj28yAy/hUsamGcGGOhbnfyt8EwLlFGEEnvCNMaiYmWSp6WI7wgiLlyQo25lEuXQno1Sj0DgBNpJJFI34RPRu8rjTfkEDy6RDYZMQaMSF71KZRmL1SxJtmQlIoykRknI+aOXhiqrFWfFDf1oVxBOd9vw4pHSYomp55eBL6QEj9Jh0lXahYmKwr3fQW9J1tFzsZ/F6tXSuR+4HDwIjmJjjwBOcJ9lBZMfrhN1wfF0U49LFrp93Xymt6bHn26e+zxwFhr2MaBELxismDczXyrnepYvFosrQ5Umt1Ns8ihdjkkQppiZYQfLdJ/Bess7WR99HC8Uddtv0hJ4bP4eILmqdM24ENSO9EUW14UmMqFfKSweVwVszpvFzqFjIvdSEq744PHa8WB7HkMarrCJAqRnxf8USVCg8ASId/i7okC2bAAAAAElFTkSuQmCC"
SSHUTTLE_DISCONNECTED="iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAGjSURBVFhHxZY9TsRADIVT0FHQcQEuQEFFR0+JaKgouP8V8CftkyzHMxkPk/Ckp+xms/bz72S7GI/GV+OH8cv4bLwEOH43/gQi4lTcG9+M0bFIJk4D6f02EjkZQMzT7Z4EUI7lwBmR4QBnOH0wCnyXAJ5dhjsjEcl4pBqOTPCdzCwDkXwao9NIMgH5vCT6o6gjST+R05g7yBiRMB5c9fCLkRRiQOQez2WOWuR5+oIy7NAbl5XcLR9qgiIykC2LlUznnpuk+woRaeNpLs8W0V06qv9ZIrCLzSb4UR0tEaQrGprl0Mx7h4xKdcRaLO17ZjszEolA7fseCaKb+gwjtSdbGD4SQUBlUH9/ZEYyNQARveegni1DoxmpLdb63RNx0wJwFA3qABntEzgtIJ5w9AU1r54Xu70/Ct+INBp9MbOYppoQKAOMEc02MnIZVbYytJSI+i8Lif9PoVJrZSkrEWu9DL2zIQLDlAPjXPVW5Oefz60DDHFlYMi/RmeITdk6RacyUIHfCZmI0kE0C8qkRvUiKCHXSyCHXsS/gAZlZxz10A3b9gvc8bJNvYvKrAAAAABJRU5ErkJggg=="

VPN_EXECUTABLE=/usr/local/bin/sshuttle

VPN_HOST="vps2.danbee.co.uk"

VPN_USERNAME="danbarber"

VPN_PIDFILE="/tmp/sshuttle.pid"

# Command to run to disconnect VPN
VPN_DISCONNECT_CMD="pkill -F $VPN_PIDFILE"

case "$1" in
    connect)
        $VPN_EXECUTABLE -D --dns -r $VPN_USERNAME@$VPN_HOST 0.0.0.0/0 --pidfile $VPN_PIDFILE

        # Wait for connection so menu item refreshes instantly
        until eval "$VPN_CONNECTED"; do sleep 1; done
        ;;
    disconnect)
        eval "$VPN_DISCONNECT_CMD"

        # Wait for disconnection so menu item refreshes instantly
        until [ ! -f $VPN_PIDFILE ]; do sleep 1; done
        ;;
esac

if [ -f $VPN_PIDFILE ]; then
    echo "| templateImage=$SSHUTTLE_CONNECTED"
    echo '---'
    echo "Disconnect Sshuttle | bash='$0' param1=disconnect terminal=false refresh=true"
    exit
else
    echo "| templateImage=$SSHUTTLE_DISCONNECTED"
    echo '---'
    echo "Connect Sshuttle | bash='$0' param1=connect terminal=false refresh=true"
    # For debugging!
    #echo "Connect VPN | bash='$0' param1=connect terminal=true refresh=true"
    exit
fi
