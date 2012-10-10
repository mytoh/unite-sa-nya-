scriptencoding utf-8

function! unite#sources#sa_nya_#define()
	return s:source
endfunction

let s:source = {
\	"name" : "moo",
\	"description" : "スーパー牛さんパワー",
\	"moo__counter" : 0
\}

let s:source = {
\	"name" : "sa-nya-",
\	"description" : "(」・×・)」さー！(／・×・)／にゃー！",
\	"sa_nya__counter" : 0,
\	"sa_nya__cache" : ""
\}

function! s:source.async_gather_candidates(args, context)
	let u = "(」・×・)」".get(a:args, 0, "うー")."！"
	let nya = "(／・×・)／".get(a:args, 1, "にゃー")."！\n"
	let a:context.source.unite__cached_candidates = []
	let self.sa_nya__cache .= (self.sa_nya__counter % 2 == 0 ? u : nya)
	let self.sa_nya__counter += 1

	return map(split(copy(self.sa_nya__cache), '\n'), '{ "word" : v:val }')
endfunction



" (・×・)