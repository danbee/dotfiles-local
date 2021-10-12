let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fix_on_save = 1

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
\    'rubocop',
\    'standardrb'
\  ],
\  'typescript': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'prettier'
\  ],
\  'typescriptreact': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'prettier'
\  ],
\  'vue': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'eslint',
\    'prettier'
\  ]
\}
