if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-login
	bash -c "~/.zprofile"
end

fish_vi_key_bindings
