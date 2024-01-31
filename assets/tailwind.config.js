module.exports = {
  content: [
    "../assets/*.js",
    "../lib/layouts/*.eex",
    "../lib/layouts/**/*.eex",
  ],
  plugins: [
    require("@tailwindcss/typography"),
  ],
};
