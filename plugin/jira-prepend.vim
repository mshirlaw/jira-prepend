" Package: JIRA Prepend
" Maintainer: Matt Shirlaw
" Last Change: 21 December 2018

if exists('g:jira_prepend_loaded')
	finish
endif

let g:jira_prepend_loaded = 1

function! s:ValidTicketSet()
	if !exists("g:jira_prepend_ticket_pattern")
		echoerr "Ticket pattern is required: Please set \"g:jira_prepend_ticket_pattern\" in your .vimrc"
		execute "normal! \<esc>"
		return 0
	endif
	return 1
endfunction

function! PrependTicketNumber()
	if !s:ValidTicketSet() | return | endif
	let jira_prepend_command = "normal! /" . g:jira_prepend_ticket_pattern . "\<cr>veeeyggpA "
	if exists("g:jira_prepend_custom_message")
		let jira_prepend_command = jira_prepend_command . g:jira_prepend_custom_message
	endif
	execute jira_prepend_command
	:startinsert!
endfunction

nnoremap <leader>pp :call PrependTicketNumber()<cr>

