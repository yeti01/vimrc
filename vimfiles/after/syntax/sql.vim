syn case ignore

" Keywords
syn keyword sqlKeyword      after aggregate authorization cache cascade
syn keyword sqlKeyword      collate collation conflict connection constraint
syn keyword sqlKeyword      database debug each external foreign inner
syn keyword sqlKeyword      join key left minvalue maxvalue object off outer
syn keyword sqlKeyword      references referencing release right role schema
syn keyword sqlKeyword      primary transaction unique virtual

" Operators
syn keyword sqlOperator     case elif else end from if is match matches regexp
syn keyword sqlOperator     then versions when where on
syn match   sqlOperator     "||\|:="

" Functions
syn match   sqlFunction     "\<\(abs\|acos\|asin\|atan2\?\|avg\|cardinality\)(\@="
syn match   sqlFunction     "\<\(cast\|changes\|char_length\|character_length\)(\@="
syn match   sqlFunction     "\<\(coalesce\|cos\|count\|\(date\)\?\(time\)\?\)(\@="
syn match   sqlFunction     "\<\(exp\|filetoblob\|filetoclob\|glob\|group_concat\)(\@="
syn match   sqlFunction     "\<\(hex\|ifnull\|initcap\|isnull\|julianday\|last_insert_rowid\)(\@="
syn match   sqlFunction     "\<\(length\|log10\|logn\|lower\|lpad\|ltrin\|max\|min\)(\@="
syn match   sqlFunction     "\<\(mod\|nullif\|octet_length\|pow\|quote\|random\)(\@="
syn match   sqlFunction     "\<\(range\|replace\|root\|round\|rpad\|sin\|soundex\)(\@="
syn match   sqlFunction     "\<\(sqrtstdev\|strftime\|substr\|substring\|sum\|sysdate\|tan\)(\@="
syn match   sqlFunction     "\<\(to_char\|to_date\|total\|trim\|trunc\|typeof\)(\@="
syn match   sqlFunction     "\<\(upper\|variance\)(\@="

" Statements
syn keyword sqlStatement    begin replace vacuum

" Types
syn keyword sqlType         bigint bit blob bool byte clob datetime dec decimal
syn keyword sqlType         double enum int int8 interval longblob longtext
syn keyword sqlType         lvarchar mediumblob mediumint mediumtext money multiset
syn keyword sqlType         nchar numeric nvarchar nvarchar2 precision real serial
syn keyword sqlType         serial8 set smallfloat smallint text time timestamp
syn keyword sqlType         tinyblob tinyint tinytext varying year

" Default highlighting
if version >= 508 || !exists("did_sql_syn_inits")
    if version < 508
        let did_sql_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink sqlKeyword       Special
    HiLink sqlOperator      Operator
    HiLink sqlFunction      Function
    HiLink sqlType          Type

    delcommand HiLink
endif
" vim:ts=8:sw=4:sts=4:et:ff=unix
