# Defined in - @ line 1
function l --wraps='ls -la --color' --description 'alias l=ls -la --color'
  ls -la --color $argv;
end
