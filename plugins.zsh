zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure', use:pure.zsh, as:theme

zplug 'zsh-users/zsh-syntax-highlighting', defer:2
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

[[ -z "${CODESPACES}" ]] && zplug 'asdf-vm/asdf'
[[ -e "${ZPLUG_REPOS}/asdf-vm/asdf/asdf.sh" ]] && source $ZPLUG_REPOS/asdf-vm/asdf/asdf.sh
[[ -n "${ASDF_DIR}" ]] && fpath=(${ASDF_DIR}/completions $fpath)

