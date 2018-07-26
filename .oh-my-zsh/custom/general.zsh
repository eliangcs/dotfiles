export EDITOR=nvim

export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8

export PATH=$PATH:$HOME/.local/bin

# World clock
c() {
    TZ=America/Los_Angeles date +"%Y-%m-%d %H:%M %z Los Angeles"
    TZ=America/Chicago date +"%Y-%m-%d %H:%M %z Chicago"
    TZ=America/New_York date +"%Y-%m-%d %H:%M %z New York"
    TZ=UTC date +"%Y-%m-%d %H:%M %z UTC"
    TZ=Europe/London date +"%Y-%m-%d %H:%M %z London"
    TZ=Europe/Berlin date +"%Y-%m-%d %H:%M %z Berlin"
    TZ=Europe/Moscow date +"%Y-%m-%d %H:%M %z Moscow"
    TZ=Asia/Taipei date +"%Y-%m-%d %H:%M %z Taipei"
    TZ=Asia/Tokyo date +"%Y-%m-%d %H:%M %z Tokyo"
    TZ=Australia/Sydney date +"%Y-%m-%d %H:%M %z Sydney"
}

# Colorize log
colorlog() {
    esc=$(printf '\033')
    sed -E "\
s#\[([^]]+)\]#${esc}[1;35m[\1]${esc}[0m#; \
s#WARNING#${esc}[33m&${esc}[0m#; \
s#ERROR#${esc}[31m&${esc}[0m#; \
s#INFO#${esc}[36m&${esc}[0m#; \
s#DEBUG#${esc}[32m&${esc}[0m#; \
s#[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}[^ \t]*#${esc}[1;34m&${esc}[0m#"
}

export DISABLE_AUTO_TITLE='true'

alias wt="watson"

httplogger() {
    while true; do
        echo -e "HTTP/1.1 200 OK\r\n\r\nok" | nc -vl 8989
        test $? -gt 128 && break
        echo
        echo '----------------------------------------'
    done
    echo
}
