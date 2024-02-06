module.exports = {
  darkMode: 'media',
  content: [
    "../assets/*.js",
    "../lib/layouts/*.eex",
    "../lib/layouts/**/*.eex",
    "../node_modules/flowbite/**/*.js",
    "../src/**/*.md",
    "../src/*.md",
  ],
  plugins: [
    require("flowbite/plugin"),
    require("@tailwindcss/typography"),
  ],
};
