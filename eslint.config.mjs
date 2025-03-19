export default [
  {
    languageOptions: {
      ecmaVersion: 'latest',
      sourceType: 'module',
    },
    settings: {
      env: {
        browser: true,
        es2021: true,
        jquery: true,
        webextensions: true,
      },
    },
    rules: {
      'no-undef': 'off',
      'no-extra-semi': 'off',
    },
  },
]
