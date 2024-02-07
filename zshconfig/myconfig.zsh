# Global Configuration Variables

#--------------------------------------------------------------------#
# zsh-autosuggestions-config                                         #
#--------------------------------------------------------------------#

bindkey '\t\t' autosuggest-accept

# Color to use when highlighting suggestion
# Uses format of `region_highlight`
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
(( ! ${+ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE} )) &&
typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#f7c8e1,bold,underline'

# Prefix to use when saving original versions of bound widgets
(( ! ${+ZSH_AUTOSUGGEST_ORIGINAL_WIDGET_PREFIX} )) &&
typeset -g ZSH_AUTOSUGGEST_ORIGINAL_WIDGET_PREFIX=autosuggest-orig-

# Strategies to use to fetch a suggestion
# Will try each strategy in order until a suggestion is returned
(( ! ${+ZSH_AUTOSUGGEST_STRATEGY} )) && {
	typeset -ga ZSH_AUTOSUGGEST_STRATEGY
	ZSH_AUTOSUGGEST_STRATEGY=(history)
}

# Widgets that clear the suggestion
(( ! ${+ZSH_AUTOSUGGEST_CLEAR_WIDGETS} )) && {
	typeset -ga ZSH_AUTOSUGGEST_CLEAR_WIDGETS
	ZSH_AUTOSUGGEST_CLEAR_WIDGETS=(
		history-search-forward
		history-search-backward
		history-beginning-search-forward
		history-beginning-search-backward
		history-substring-search-up
		history-substring-search-down
		up-line-or-beginning-search
		down-line-or-beginning-search
		up-line-or-history
		down-line-or-history
		accept-line
		copy-earlier-word
	)
}

# Widgets that accept the entire suggestion
(( ! ${+ZSH_AUTOSUGGEST_ACCEPT_WIDGETS} )) && {
	typeset -ga ZSH_AUTOSUGGEST_ACCEPT_WIDGETS
	ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
		forward-char
		end-of-line
		vi-forward-char
		vi-end-of-line
		vi-add-eol
	)
}

# Widgets that accept the entire suggestion and execute it
(( ! ${+ZSH_AUTOSUGGEST_EXECUTE_WIDGETS} )) && {
	typeset -ga ZSH_AUTOSUGGEST_EXECUTE_WIDGETS
	ZSH_AUTOSUGGEST_EXECUTE_WIDGETS=(
	)
}

# Widgets that accept the suggestion as far as the cursor moves
(( ! ${+ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS} )) && {
	typeset -ga ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS
	ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
		forward-word
		emacs-forward-word
		vi-forward-word
		vi-forward-word-end
		vi-forward-blank-word
		vi-forward-blank-word-end
		vi-find-next-char
		vi-find-next-char-skip
	)
}

# Widgets that should be ignored (globbing supported but must be escaped)
(( ! ${+ZSH_AUTOSUGGEST_IGNORE_WIDGETS} )) && {
	typeset -ga ZSH_AUTOSUGGEST_IGNORE_WIDGETS
	ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
		orig-\*
		beep
		run-help
		set-local-history
		which-command
		yank
		yank-pop
		zle-\*
	)
}

# Pty name for capturing completions for completion suggestion strategy
(( ! ${+ZSH_AUTOSUGGEST_COMPLETIONS_PTY_NAME} )) &&
typeset -g ZSH_AUTOSUGGEST_COMPLETIONS_PTY_NAME=zsh_autosuggest_completion_pty

#--------------------------------------------------------------------#
# zsh-syntax-highlighting-config                                     #
#--------------------------------------------------------------------#
if [ -f ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
	typeset -gA ZSH_HIGHLIGHT_STYLES
	ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f7c8e1'
	ZSH_HIGHLIGHT_STYLES[path]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#FF79C6'
	ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#FF79C6'
	ZSH_HIGHLIGHT_STYLES[globbing]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#BD93F9'
	#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
	#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
	#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
	#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
	ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#FF5555'
	ZSH_HIGHLIGHT_STYLES[redirection]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[arg0]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[default]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[cursor]='standout'

	ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#FF5555'
	ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[assign]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#F8F8F2'

	ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#F1FA8C'
	ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#F1FA8C'
	ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#F1FA8C'
	ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#FF5555'
	ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#F1FA8C'
	ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#FF5555'
	ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#F1FA8C'

	ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#FF79C6'
	ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#F8F8F2'
	ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#FF79C6'
	ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#FF79C6'
	ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#FF79C6'

	ZSH_HIGHLIGHT_STYLES[builtin]='fg=#8BE9FD'
	ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#8BE9FD'
	ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#8BE9FD'

	ZSH_HIGHLIGHT_STYLES[alias]='fg=#50FA7B'
	ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#50FA7B'
	ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#50FA7B'
	ZSH_HIGHLIGHT_STYLES[function]='fg=#50FA7B'
	ZSH_HIGHLIGHT_STYLES[command]='fg=#50FA7B'
	ZSH_HIGHLIGHT_STYLES[precommand]='fg=#50FA7B,italic'
	ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#FFB86C,italic'
	ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#FFB86C'
	ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#FFB86C'
	ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#BD93F9'

	ZSH_HIGHLIGHT_STYLES[comment]='fg=#6272A4'
fi
