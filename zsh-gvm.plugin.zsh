GITHUB="https://github.com"

[[ -z "$GVM_ROOT" ]] && export GVM_ROOT="$HOME/.gvm"

_zsh_gvm_install() {
    echo "Installing gvm..."
    git clone "${GITHUB}/moovweb/gvm.git"         "${GVM_ROOT}"
}

_zsh_gvm_load() {
    # export PATH
    export GVM_ROOT="$HOME/.gvm"
    export PATH="$GVM_ROOT/bin:$PATH"
    source $GVM_ROOT/scripts/gvm-default
}

# install goenv if it isnt already installed
[[ ! -f "$GVM_ROOT/scripts/gvm-default" ]] && _zsh_gvm_install

# load goenv if it is installed
if [[ -f "$GVM_ROOT/scripts/gvm-default" ]]; then
    _zsh_gvm_load
fi
