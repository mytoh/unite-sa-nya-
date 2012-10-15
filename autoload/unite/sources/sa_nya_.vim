scriptencoding utf-8

function! unite#sources#sa_nya_#define()
	return s:source
endfunction

let s:source = {
\	"name" : "sa-nya-",
\	"description" : "(」・×・)」ｻｰ！(／・×・)／ ﾆｬｰ！",
\	"sa_nya__counter" : 0,
\	"sa_nya__cache" : ""
\}

function! s:source.async_gather_candidates(args, context)
	let sa = "(」・×・)」".get(a:args, 0, "ｻｰ")."！"
	let nya = "(／・×・)／".get(a:args, 1, "ﾆｬｰ")."！\n"
	let a:context.source.unite__cached_candidates = []
	let self.sa_nya__cache .= (self.sa_nya__counter % 2 == 0 ? sa : nya)
	let self.sa_nya__counter += 1

	return map(split(copy(self.sa_nya__cache), '\n'), '{ "word" : v:val }')
endfunction




 " '(」・×・)」ｻｰ！  '
 " '(／・×・)／ ﾆｬｰ！'

