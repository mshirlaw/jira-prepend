" Package: JIRA Prepend
" Maintainer: Matt Shirlaw
" Last Change: 17 December 2018

function! PrependTicketNumber()
	if !exists("g:jira_prepend_ticket_pattern")
		echoerr "Ticket pattern is required: Please set \"g:jira_prepend_ticket_pattern\" in your .vimrc"
		execute "normal! \<esc>"
		return
	endif
	let g:jira_prepend_command = "normal! /" . g:jira_prepend_ticket_pattern . "\<cr>veeeyggpA "
	if exists("g:jira_prepend_custom_message")
		let g:jira_prepend_command = g:jira_prepend_command . g:jira_prepend_custom_message
	endif
	execute g:jira_prepend_command
	:startinsert!
endfunction

nnoremap <leader>pp :call PrependTicketNumber()<cr>
