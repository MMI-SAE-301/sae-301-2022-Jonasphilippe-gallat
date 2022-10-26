const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend:
    {
      colors: {
        'beigebgbg': '#F6EBE2',
        "bleu_elec": "#0057ff",
        "bleu_fonce": "#00143A"
      },

      fontFamily: {
        'montserrat': ['Montserrat '],
        'archivo': ['Archivo'],
      },
      fontSize: {
        "base": "1.25rem",
        "lg": "1.6875rem",
        "xl": "2.5rem",
        "2xl": "3rem",
        "3xl": "6rem",
        "4xl": "9rem",

      },
      fontWeight: {

        "100": 100,
        "200": 200,
        "300": 300,
        "400": 400,
        "500": 500,
        "600": 600,
        "700": 700,
        "button": 800,
        "900": 900,
      }
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
};
