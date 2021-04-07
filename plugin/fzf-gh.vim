command! PRS call fzf#run(fzf#wrap({'source': 'gh pr list -L100', 'sink': function('PrsFzf')}))
command! PRSR call fzf#run(fzf#wrap({'source': 'gh pr list -L100 --search "is:open is:pr review-requested:@me"', 'sink': function('PrsFzf')}))

function! PrsFzf(line)
  let [id; rest] = split(a:line, "\t")
	if get(g:, 'fzf_gh_website', 0) == 1
		silent execute '! gh pr view ' . id . ' --web'
	else
    execute ':enew | r ! gh pr view ' . id
	endif
endfunction
