## standins for normal bash functionality, to make ruby better for scripting.

# $@ -> #{args}
def args
    ARGV.join(' ')
end
