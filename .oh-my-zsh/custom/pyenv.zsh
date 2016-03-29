eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

ja() {
    j $1 && pyenv activate $1
}
