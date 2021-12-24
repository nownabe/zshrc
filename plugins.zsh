# zsh-users/zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

# asdf-vm/asdf
[[ -e "${ZPLUG_REPOS}/asdf-vm/asdf/asdf.sh" ]] && source $ZPLUG_REPOS/asdf-vm/asdf/asdf.sh
[[ -n "${ASDF_DIR}" ]] && fpath=(${ASDF_DIR}/completions $fpath)
