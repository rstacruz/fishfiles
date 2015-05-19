function gcd --description 'Go to git root'
  cd (git rev-parse --show-toplevel)
end
