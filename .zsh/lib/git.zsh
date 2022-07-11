function __git_prompt_git() {
  GIT_OPTIONAL_LOCKS=0 command git "$@"
}

function git_prompt_info() {
  # If we are on a folder not tracked by git, get out.
  # Otherwise, check for hide-info at global and local repository level
  #
  if ! __git_prompt_git rev-parse --git-dir &> /dev/null ; then
      return 0
  fi

  local ref
  ref=$(__git_prompt_git symbolic-ref --short HEAD 2> /dev/null) \
    || ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null) \
    || return 0

  echo "${THEME_GIT_PROMPT_PREFIX}${ref:gs/%/%%}${THEME_GIT_PROMPT_SUFFIX}"
}
