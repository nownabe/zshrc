zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure', use:pure.zsh, as:theme

zplug 'zsh-users/zsh-syntax-highlighting', defer:2

[[ -z "${CODESPACES}" ]] && zplug 'asdf-vm/asdf'

if ! zplug check --verbose; then
  zplug install
fi

zplug load --verbose

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

[[ -e "${ZPLUG_REPOS}/asdf-vm/asdf/asdf.sh" ]] && source $ZPLUG_REPOS/asdf-vm/asdf/asdf.sh
[[ -n "${ASDF_DIR}" ]] && fpath=(${ASDF_DIR}/completions $fpath)
