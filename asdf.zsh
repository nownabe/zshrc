if [[ -e "$ZPLUG_REPOS/asdf-vm/asdf/asdf.sh" ]]; then
  source $ZPLUG_REPOS/asdf-vm/asdf/asdf.sh
  fpath=(${ASDF_DIR}/completions $fpath)
fi
