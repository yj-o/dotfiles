# PATH
function __add_folder_to_path --description "Add folder to PATH"
  if test (count $argv) -ne 1
    echo 'Must has only one argument'
    return 1
  end
  if test -e $argv[1]
    set -gx PATH $argv[1] $PATH
  end
end

function __add_folder_to_manpath --description "Add folder to MANPATH"
  if test (count $argv) -ne 1
    echo 'Must has only one argument'
    return 1
  end
  if test -e $argv[1]
    set -gx MANPATH $argv[1] $MANPATH
  end
end


# project function
function prj -d "Go to project"
  set matching (printf '%s\n' $projects_path | grep "$argv")

  if test (count $matching) = 1
    cd $matching
    return
  end

  printf '%s\n' $matching | fzf | read -l path; and cd $path
end