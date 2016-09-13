export EDITOR=nvim

export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8

# World clock
c() {
    TZ=America/Los_Angeles date +"%Y-%m-%d %H:%M %z Los Angeles"
    TZ=America/New_York date +"%Y-%m-%d %H:%M %z New York"
    TZ=UTC date +"%Y-%m-%d %H:%M %z UTC"
    TZ=Europe/London date +"%Y-%m-%d %H:%M %z London"
    TZ=Europe/Berlin date +"%Y-%m-%d %H:%M %z Berlin"
    TZ=Europe/Moscow date +"%Y-%m-%d %H:%M %z Moscow"
    TZ=Europe/Taipei date +"%Y-%m-%d %H:%M %z Taipei"
    TZ=Asia/Tokyo date +"%Y-%m-%d %H:%M %z Tokyo"
    TZ=Australia/Sydney date +"%Y-%m-%d %H:%M %z Sydney"
}
