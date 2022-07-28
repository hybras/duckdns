Now if only there was a simple way to automate the updating of my IP address to my DuckDNS host name. Oh wait -- there is!

This is a fork of a prexisting formula that fetches your device's ip address from tailscale instead of having duckdns infer it.

## Installation

1. `$ brew install hybras/tap/duckdns`
1. Configure - make a $HOME/config/.duckdns config file like so:
    ```zsh
    DOMAIN="example,example2"
    TOKEN="11111111-1111-1111-1111-111111111111"
    ```
1. Run and register to launch at login
`$ brew services start duckdns`
