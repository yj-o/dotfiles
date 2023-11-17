function p -d "Go to project"
  cd $projects_path   #go int project dir

  if count $argv > /dev/null       #if argv is given  
    
    set _p_dirs (printf '%s\n' $projects_path | fd "$argv" -t d)  #find sub-dirs matched input
    
    if test (count $_p_dirs) = 1 #if only one match, cd to it
      cd $_p_dirs
      return
    else #otherwise popup fzf
      printf '%s\n' $_p_dirs | fzf | read -l path; and cd $path
      return
    end   
  end
end