let in_zellij = ($env.ZELLIJ? | default "" | is-not-empty)
let is_interactive = $nu.is-interactive

if $is_interactive and not $in_zellij {
    let auto_attach = ($env.ZELLIJ_AUTO_ATTACH? | default "false")
    let auto_exit = ($env.ZELLIJ_AUTO_EXIT? | default "false")

    if $auto_attach == "true" {
        zellij attach -c
    } else {
        zellij
    }

    if $auto_exit == "true" {
        exit
    }
}
