#!/bin/bash
# Credit for original concept and initial work to: Jesse Jarzynka

# Updated by: Ventz Petkov (11-15-17)
#    * cleared up documentation
#    * incremented 'VPN_INTERFACE' to 'utun99' to avoid collisions with other VPNs

# Updated by: Ventz Petkov (9-28-17)
#    * fixed for Mac OS X High Sierra (10.13)

# Updated by: Ventz Petkov (7-24-17)
#    * fixed openconnect (did not work with new 2nd password prompt)
#    * added ability to work with "Duo" 2-factor auth
#    * changed icons

# <bitbar.title>VPN Status</bitbar.title>
# <bitbar.version>v1.1</bitbar.version>
# <bitbar.author>Ventz Petkov</bitbar.author>
# <bitbar.author.github>ventz</bitbar.author.github>
# <bitbar.desc>Connect/Disconnect OpenConnect + show status</bitbar.desc>
# <bitbar.image></bitbar.image>

#########################################################
# USER CHANGES #
#########################################################

# 1.) Updated your sudo config with (edit "osx-username" with your username):
#osx-username ALL=(ALL) NOPASSWD: /usr/local/bin/openconnect
#osx-username ALL=(ALL) NOPASSWD: /usr/bin/killall -2 openconnect

DO_ICON="iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAHbSURBVFhHxZehTgUxEEU3QSFQODRfgEZj8UgMEo3G8wE4HJIfQCGROCQGjcHCPZvdTdvMtN1uedzkkJd9r93p9M60DCt1Im7Fi/gQXxN85tmdOBcHopuYjIk/xU8lBEWgR2KTLsWaF6d8C4LfE6vEqp+FNWkLbE91Ng7Fq7Am2gKZxENZ8fI3YU3QA8zKO1w9CmtgCJPciwtxNsFnnr0La0wIW2t6gvKxBsyQQkxZMhTzlLJIhUTCdDm3Y6Js6hLti1w2KdOoV1wJ64dAypiwRbkgrsUiz/VEuqWZELjnC7w0bufx9MCCPd8qDGrNDWNZkgrrS1bfmvpQrNLz140YW6X15YPoJc8L4zueggchkUk2yssy1TX+4dBIoZ57yfMB/WInwsz/GkB2C3Yhz2fVRqcc6ZYWJTGWkrYCqO4zdENrAigdTtS6NQ6WLks3pCvNpA2oNQDGeaun/S9Kr1/pzaUlAE673LEcbV/vAMho7lpHYNG4XgGwakrOS/sMt6hInAfU5Axd8DSAAeH3IXQ5jEZJ0UGtF4ZwLhSVpo+z21P4uxLVl5u/CIBsVR/vvQNge6I7YEm9AuAi0nSq0iIx1kzubmC9mAUwZtWqW8WlE3PxjwnBpiWc0TD8Ajneu96uLPklAAAAAElFTkSuQmCC"
DO_ICON_DISABLED="iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAHVSURBVFhHxZfBSsUwEEUrIuLCjSC4cCEiCC5cuBBBcCGCIIIIIvj/P+I9pS1JmEnSND4vHHn0vaSTyZ1JHFbqRNyKF/Ehvib4zLM7cS4ORDcxGRN/ip9KCIpAj8QmXYo1L075FgS/J1aJVT8La9IW2J7qbByKV2FNtAUyiYey4uVvwpqgB5iVd7h6FNbAECa5FxfibILPPHsX1pgQttb0BOVjDZghhZiyZCjmKWWRComE6XJux0TZ1CXaF7lsUqZRr7gS1g+BlDFhi3JBXItFnuuJdEszIXDPF3hp3M7j6YEFe75VGNSaG8ayJBXWl6y+NfWhWKXnrxsxtkrrywfRS54Xxnc8BQ9CIpNslJdlqmv8w6GRQj33kucD+sVOhJn/NYDsFuxCns+qjU450i0tSmIsJW0FUN1n6IbWBFA6nKh1axwsXZZuSFeaSRtQawCM81ZP+1+UXr/Sm0tLAJx2uWM52r7eAZDR3LWOwKJxvQJg1ZScl/YZblGROA+oyRm64GkAA8LvQ+hyGI2SooNaLwzhXCgqTR9nt6fwdyWqLzd/EQDZqj7eewfA9kR3wJJ6BcBFpOlUpUVirJnc3cB6MQtgzKpVt4pLJ+biHxOCTUs4o2H4Bep2mwAVJiS3AAAAAElFTkSuQmCC"
# 2.) Make sure openconnect binary is located here:
#     (If you don't have it installed: "brew install openconnect")
VPN_EXECUTABLE=/usr/local/bin/openconnect


# 3.) Update your AnyConnect VPN host
VPN_HOST="vpn-nyc2.digitalocean.com"

VPN_URL="https://$VPN_HOST/ops"

# 4.) Update your AnyConnect username + tunnel (for Duo)
VPN_USERNAME="dbarber"

VPN_REALM="general"

# 5.) Create an encrypted password entry in your OS X Keychain:
#      a.) Open "Keychain Access" and 
#      b.) Click on "login" keychain (top left corner)
#      c.) Click on "Passwords" category (bottom left corner)
#      d.) From the "File" menu, select -> "New Password Item..."
#      e.) For "Keychain Item Name" and "Account Name" use the value for "VPN_HOST"
#      f.) For "Password" enter your VPN AnyConnect password.

# This will retrieve that password securely at run time when you connect, and feed it to openconnect
# No storing passwords unenin plain text files! :)
GET_VPN_PASSWORD="security find-generic-password -g -a $VPN_HOST 2>&1 >/dev/null | cut -d'\"' -f2"

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# END-OF-USER-SETTINGS #
#########################################################

VPN_INTERFACE="utun5"

# Command to determine if VPN is connected or disconnected
VPN_CONNECTED="ps -axc |grep openconnect"
# Command to run to disconnect VPN
VPN_DISCONNECT_CMD="sudo killall -2 openconnect"


case "$1" in
    connect)
        VPN_PASSWORD=$(eval "$GET_VPN_PASSWORD")
        # VPN connection command, should eventually result in $VPN_CONNECTED,
        # may need to be modified for VPN clients other than openconnect

        # The "push" is for Duo - to push to your phone. You could use "sms" or "phone"
        # For anything else (non-duo) - you would provide your token (see: stoken)
        echo -e "${VPN_PASSWORD}\npush\n" | sudo "$VPN_EXECUTABLE" -b -i $VPN_INTERFACE -u "$VPN_USERNAME" --juniper "$VPN_URL" --authgroup $VPN_REALM --passwd-on-stdin

        # Wait for connection so menu item refreshes instantly
        until eval "$VPN_CONNECTED"; do sleep 1; done
        ;;
    disconnect)
        eval "$VPN_DISCONNECT_CMD"
        # Wait for disconnection so menu item refreshes instantly
        until [ -z "$(eval "$VPN_CONNECTED")" ]; do sleep 1; done
        ;;
esac


if [ -n "$(eval "$VPN_CONNECTED")" ]; then
    echo "| templateImage=$DO_ICON"
    echo '---'
    echo "Disconnect VPN | bash='$0' param1=disconnect terminal=false refresh=true"
    exit
else
    echo "| templateImage=$DO_ICON_DISABLED"
    echo '---'
    echo "Connect VPN | bash='$0' param1=connect terminal=false refresh=true"
    # For debugging!
    #echo "Connect VPN | bash='$0' param1=connect terminal=true refresh=true"
    exit
fi
