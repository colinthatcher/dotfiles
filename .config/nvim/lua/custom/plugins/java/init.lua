return {
  'nvim-java/nvim-java',
  config = false,
  dependencies = {
    {
      'neovim/nvim-lspconfig',
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            -- settings = {
            --   java = {
            --     configuration = {
            --       runtimes = {
            --         {
            --           name = "JavaSE-23",
            --           path = "/usr/local/sdkman/candidates/java/23-tem",
            --         },
            --       },
            --     },
            --   },
            -- },
          },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require('java').setup {
              root_markers = {
                --   "settings.gradle",
                --   "settings.gradle.kts",
                'pom.xml',
                --   "build.gradle",
                'mvnw',
                --   "gradlew",
                --   "build.gradle",
                --   "build.gradle.kts",
              },
            }
          end,
        },
      },
    },
  },
  keys = {
    {
      '<leader>tt',
      function()
        require('java').test.view_last_report()
      end,
      mode = 'n',
      desc = 'View Test Report',
    },
    {
      '<leader>tc',
      function()
        require('java').test.run_current_class()
      end,
      mode = 'n',
      desc = 'Test Current Class',
    },
    {
      '<leader>tn',
      function()
        require('java').test.run_current_method()
      end,
      mode = 'n',
      desc = 'Test Current Method',
    },
    {
      '<leader>dn',
      function()
        require('java').test.debug_current_method()
      end,
      mode = 'n',
      desc = 'Debug Current Method',
    },
  },
}
