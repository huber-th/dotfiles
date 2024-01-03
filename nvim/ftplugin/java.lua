-- Pre-Requisits
--
-- For this to work the following has to be installed:
-- - Java 17 or higher ( brew install openjdk )
-- - jdtls ( brew install jdtls )
-- - Download lombok.jar from projectlombok.org to ~/.local/share/java/lombok.jar
--
-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.

-- Determine project name to generate unique project data directory for jdtls
-- If you started neovim within `~/dev/xy/project-1` this would resolve to `project-1`
local home = os.getenv("HOME")
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = home .. '/.cache/jdtls/workspace-' .. project_name
local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local lombok_path = home .. '/.local/share/java/lombok.jar'
local brew_prefix = ''
local java_version = ''
local jdtls_version = ''
local jdtls_launcher = ''
-- Set brew prefix depending on architecture
if jit.arch == 'arm64' then
  brew_prefix = '/opt/homebrew/Cellar/'
  java_version = '21.0.1/'
  jdtls_version = '1.30.1/'
  jdtls_launcher = 'org.eclipse.equinox.launcher_1.6.600.v20231106-1826.jar'
else
  brew_prefix = '/usr/local/opt/'
end


-- local brew_prefix = '/usr/local/opt/'
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {

    -- 💀
    brew_prefix .. 'openjdk/' .. java_version .. 'bin/java', -- or '/path/to/java17_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    "-javaagent:" .. lombok_path,
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',

    -- 💀
    '-jar', brew_prefix .. 'jdtls/' .. jdtls_version .. 'libexec/plugins/org.eclipse.equinox.launcher_1.6.600.v20231106-1826.jar',
         -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
         -- Must point to the                                                     Change this to
         -- eclipse.jdt.ls installation                                           the actual version


    -- 💀
    '-configuration', brew_prefix .. 'jdtls/' .. jdtls_version .. 'libexec/config_mac',
                    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                    -- Must point to the                      Change to one of `linux`, `win` or `mac`
                    -- eclipse.jdt.ls installation            Depending on your system.


    -- 💀
    -- See `data directory configuration` section in the README
    '-data', workspace_dir
  },

  -- 💀
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root(root_markers),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
    }
  },

  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = {}
  },
}
-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)
