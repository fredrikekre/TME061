using Franklin, LiveServer

@eval Franklin begin
    function hfun_jlinsert(arg)
        arg = first(arg)
        if arg == "next-fignum"
            return next_fignum()
        else
            error("unknown argument arg = $arg")
        end
    end
    function next_fignum()
        n = locvar("_last-fignum")
        @show n, typeof(n)
        if n === nothing
            n = 1
            set_vars!(LOCAL_VARS, ["_last-fignum" => string(n), ]) # TODO: Use set_var! instead ???
        else
            n += 1
        end
        return string(n)
    end
end
