function gits --argument-names 'depth'
	if not string match -rq '^[0-9]+$' -- $depth
		set depth 10
	end
	echo looking for .git with maxdepth $depth
	find . -name .git -maxdepth $depth -execdir bash -c 'echo -en "\033[1;31m"repo: "\033[1;34m"; basename "`git rev-parse --show-toplevel`"; git status -s' \;
end

