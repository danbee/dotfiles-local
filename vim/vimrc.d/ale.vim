let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fixers = {
\  'elixir': [
\    'mix_format'
\  ],
\  'javascript': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'eslint',
\    'prettier'
\  ],
\  'json': [
\    'jq'
\  ],
\  'ruby': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'rubocop'
\  ]
\}
