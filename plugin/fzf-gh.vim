command! PRS call fzf#run(fzf#wrap({'source': 'gh pr list -L100', 'sink': function('PrsFzf')}))
function! PrsFzf(line)
  let [id; rest] = split(a:line, "\t")
    execute ':enew | r ! gh pr view ' . id
endfunction

command! PRSR call fzf#run(fzf#wrap({'source': 'gh pr list -L100 --search "is:open is:pr review-requested:@me"', 'sink': function('PrsrFzf')}))
function! PrsrFzf(line)
  let [id; rest] = split(a:line, "\t")
    execute ':enew | r ! gh pr view ' . id
endfunction
