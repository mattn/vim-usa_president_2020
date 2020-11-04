let s:status = ''
let s:res = []

function! usa_president_2020#status()
  return s:status
endfunction

function! s:job_callback(ch, data) abort
  call add(s:res, a:data)
  if ch_status(a:ch) !=# 'closed'
    return
  endif
  try
    let l:res = json_decode(join(s:res, '')).summaries.president.wins
    let s:status = printf('Biden(%d) vs Trump(%d)', l:res.dem, l:res.gop)
  catch
  finally
    let s:res = []
  endtry
  call timer_start(60000, {x->usa_president_2020#update()})
endfunction

function! usa_president_2020#update()
  call job_start(['curl', '-s', 'https://www.huffpost.com/elections/president.json'], {'callback': function('s:job_callback')})
endfunction

call usa_president_2020#update()
