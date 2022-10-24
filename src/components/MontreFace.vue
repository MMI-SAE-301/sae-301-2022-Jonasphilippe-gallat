<script setup lang="ts">
import type { Montre } from "@/types";
withDefaults(defineProps<Montre>(), {

    bracelet: "white",
    cadran_exterieur: "white",
    cadran_interieur: "white",
    fond_boitier: "white",
    bouton: "white",
});
</script>

<template>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 411.5 704.5">

        <defs>
            <radialGradient id="radial-gradient" cx="1027.95" cy="-22914.37" r="28.95"
                gradientTransform="translate(-1141.7 5795.6) scale(1.14 0.25)" gradientUnits="userSpaceOnUse">
                <stop offset="0.1" stop-color="#dadada" stop-opacity="0.95" />
                <stop offset="1" stop-color="#fff" stop-opacity="0" />
            </radialGradient>
            <radialGradient id="radial-gradient-2" cx="33.03" cy="57.46" r="34.11" gradientTransform="translate(0)"
                gradientUnits="userSpaceOnUse">
                <stop offset="0" stop-color="#fff" />
                <stop offset="1" stop-color="#b1bfc7" />
            </radialGradient>
            <radialGradient id="radial-gradient-3" cx="21.19" cy="39.89" r="11.71" gradientTransform="translate(0)"
                gradientUnits="userSpaceOnUse">
                <stop offset="0.11" stop-color="#fff" />
                <stop offset="0.95" />
            </radialGradient>
            <radialGradient id="radial-gradient-4" cx="18.46" cy="19.69" r="2.81" xlink:href="#radial-gradient-3" />
            <radialGradient id="radial-gradient-5" cx="17.69" cy="42.76" r="4.36" xlink:href="#radial-gradient-3" />
            <radialGradient id="radial-gradient-6" cx="37.41" cy="14.67" r="5.26" xlink:href="#radial-gradient-3" />
            <radialGradient id="radial-gradient-7" cx="35.52" cy="25.67" r="1.08" xlink:href="#radial-gradient-3" />
            <radialGradient id="radial-gradient-8" cx="24.86" cy="27.59" r="2.22" xlink:href="#radial-gradient-3" />
            <radialGradient id="radial-gradient-9" cx="49.27" cy="30.89" r="15.41" xlink:href="#radial-gradient-3" />
            <linearGradient id="linear-gradient" x1="-560.65" y1="-583.25" x2="-597.7" y2="-546.2"
                gradientTransform="matrix(0.96, -0.04, -0.04, 0.96, 576.43, 564.93)" gradientUnits="userSpaceOnUse">
                <stop offset="0" />
                <stop offset="0.6" stop-color="#fff" />
                <stop offset="0.9" />
            </linearGradient>
            <linearGradient id="linear-gradient-2" x1="18959.75" y1="12535.23" x2="18922.7" y2="12572.28"
                gradientTransform="matrix(-0.37, -1, -0.85, 0.64, 17701.4, 10911.04)" xlink:href="#linear-gradient" />
            <linearGradient id="linear-gradient-3" x1="18623.39" y1="5115.24" x2="18586.34" y2="5152.29"
                gradientTransform="matrix(-0.55, -0.84, 0.91, -0.42, 5598.92, 17806.05)"
                xlink:href="#linear-gradient" />
            <linearGradient id="linear-gradient-4" x1="-2847" y1="5755.36" x2="-2884.06" y2="5792.42"
                gradientTransform="matrix(0.83, 0.55, -0.55, 0.83, 5609.73, -3209.48)" xlink:href="#linear-gradient" />
            <linearGradient id="linear-gradient-5" x1="2577.81" y1="14915.21" x2="2540.76" y2="14952.26"
                gradientTransform="matrix(-0.43, 1.4, -1.45, 0.01, 22784.55, -3726.23)" xlink:href="#linear-gradient" />
            <linearGradient id="linear-gradient-6" x1="8121.22" y1="-1938.34" x2="8084.16" y2="-1901.29"
                gradientTransform="matrix(0.81, -0.83, 0.84, 0.8, -4888.73, 8321.4)" xlink:href="#linear-gradient" />
            <linearGradient id="linear-gradient-7" x1="17700.74" y1="10160.4" x2="17663.69" y2="10197.46"
                gradientTransform="matrix(-0.95, -0.54, 0.41, -1.01, 12704.2, 19911.33)"
                xlink:href="#linear-gradient" />
            <linearGradient id="linear-gradient-8" x1="-3640.78" y1="-15472.94" x2="-3640.78" y2="-15392.38"
                gradientTransform="translate(2538.3 5136.5) scale(0.69 0.33)" gradientUnits="userSpaceOnUse">
                <stop offset="0" stop-color="#fff" />
                <stop offset="1" />
            </linearGradient>
            <linearGradient id="linear-gradient-9" x1="16.51" y1="6.01" x2="34.28" y2="48.69"
                gradientUnits="userSpaceOnUse">
                <stop offset="0" stop-color="#fff" />
                <stop offset="1" stop-color="#d4d6d7" />
            </linearGradient>
            <linearGradient id="linear-gradient-10" x1="38.66" y1="42.26" x2="14.7" y2="12.42"
                gradientUnits="userSpaceOnUse">
                <stop offset="0" stop-color="#fff" />
                <stop offset="1" stop-color="#b8babc" />
            </linearGradient>
            <radialGradient id="radial-gradient-10" cx="20.17" cy="17.26" r="15.36" xlink:href="#radial-gradient-2" />
            <linearGradient id="linear-gradient-11" x1="21.73" y1="20.07" x2="32.55" y2="38.74"
                gradientUnits="userSpaceOnUse">
                <stop offset="0" stop-color="#fff" />
                <stop offset="1" stop-color="#b7c6ce" />
            </linearGradient>
            <symbol id="Chargement_4" data-name="Chargement 4" viewBox="0 0 35.9 35.9">

                <path d="M16.8,0A17.9,17.9,0,0,0,6.1,4.5l7.4,7.4a6.8,6.8,0,0,1,3.3-1.3Z" style="fill:#bbbdbf" />
                <path d="M0,19.1A18.1,18.1,0,0,0,4.5,29.9l7.4-7.5a6.8,6.8,0,0,1-1.3-3.3Z" style="fill:#929497" />
                <path d="M4.5,6.1A17.9,17.9,0,0,0,0,16.8H10.6a6.8,6.8,0,0,1,1.3-3.3Z" style="fill:#a6a8ab" />
                <path d="M29.9,4.5A18.1,18.1,0,0,0,19.1,0V10.6a6.8,6.8,0,0,1,3.3,1.3Z" style="fill:#231f20" />
                <path d="M24,22.4l7.5,7.5a18,18,0,0,0,4.4-10.8H25.4A8.1,8.1,0,0,1,24,22.4Z" style="fill:#58595b" />
                <path d="M35.9,16.8A17.8,17.8,0,0,0,31.5,6.1L24,13.5a8.1,8.1,0,0,1,1.4,3.3Z" style="fill:#404041" />
                <path d="M6.1,31.5a17.8,17.8,0,0,0,10.7,4.4V25.4A8.1,8.1,0,0,1,13.5,24Z" style="fill:#808284" />
                <path d="M19.1,35.9a18,18,0,0,0,10.8-4.4L22.4,24a8.1,8.1,0,0,1-3.3,1.4Z" style="fill:#6d6e70" />
            </symbol>
            <symbol id="Orb_-_Gris" data-name="Orb - Gris" viewBox="0 0 66.2 72">
                <path d="M66.2,64.8c0,4-14.8,7.2-33.1,7.2S0,68.8,0,64.8s14.8-7.3,33.1-7.3S66.2,60.8,66.2,64.8Z"
                    style="mix-blend-mode:multiply;fill:url(#radial-gradient)" />
                <path d="M33.1,65.9A32.9,32.9,0,1,1,65.9,33.1,32.8,32.8,0,0,1,33.1,65.9Z"
                    style="fill:url(#radial-gradient-2)" />
                <path
                    d="M33.1.5A32.6,32.6,0,1,1,.5,33.1,32.6,32.6,0,0,1,33.1.5m0-.5A33.1,33.1,0,1,0,66.2,33.1,33.1,33.1,0,0,0,33.1,0Z"
                    style="fill:#8c98a0" />
                <path d="M32.9,39.9A11.8,11.8,0,1,1,21.2,28.2,11.7,11.7,0,0,1,32.9,39.9Z"
                    style="mix-blend-mode:screen;opacity:0.6000000000000001;fill:url(#radial-gradient-3)" />
                <path
                    d="M21.2,19.7a2.8,2.8,0,0,1-2.8,2.8,2.9,2.9,0,0,1-2.8-2.8,2.8,2.8,0,0,1,2.8-2.8A2.7,2.7,0,0,1,21.2,19.7Z"
                    style="mix-blend-mode:screen;opacity:0.8;fill:url(#radial-gradient-4)" />
                <path d="M22,42.8a4.4,4.4,0,0,1-8.7,0,4.4,4.4,0,1,1,8.7,0Z"
                    style="mix-blend-mode:screen;opacity:0.8;fill:url(#radial-gradient-5)" />
                <path
                    d="M42.6,14.7a5.2,5.2,0,0,1-5.2,5.2,5.2,5.2,0,0,1-5.3-5.2,5.3,5.3,0,0,1,5.3-5.3A5.2,5.2,0,0,1,42.6,14.7Z"
                    style="mix-blend-mode:screen;opacity:0.8;fill:url(#radial-gradient-6)" />
                <path d="M36.6,25.7a1.1,1.1,0,0,1-2.2,0,1.1,1.1,0,0,1,2.2,0Z"
                    style="mix-blend-mode:screen;fill:url(#radial-gradient-7)" />
                <path d="M27,27.6a2.2,2.2,0,1,1-2.2-2.2A2.2,2.2,0,0,1,27,27.6Z"
                    style="mix-blend-mode:screen;fill:url(#radial-gradient-8)" />
                <path d="M64.6,30.9A15.4,15.4,0,1,1,49.2,15.5,15.4,15.4,0,0,1,64.6,30.9Z"
                    style="mix-blend-mode:screen;opacity:0.8;fill:url(#radial-gradient-9)" />
                <path
                    d="M36.3,37.5c9.7-9.9,20.6-15,24.9-11.9l-.4-.4c-4-3.9-15.3,1.3-25.3,11.5s-15,21.7-11.1,25.6l.5.3C21.7,58.4,26.6,47.4,36.3,37.5Z"
                    style="mix-blend-mode:screen;fill:url(#linear-gradient)" />
                <path
                    d="M39.2,35.1C44,19.2,44.1,5,39.5,2.6h.6c5.1,1.6,5.2,16.2.2,32.8S27.1,64.1,22,62.5l-.5-.2C26.6,62.9,34.4,51.1,39.2,35.1Z"
                    style="mix-blend-mode:screen;opacity:0.4;fill:url(#linear-gradient-2)" />
                <path
                    d="M31.6,48.3C17.3,44.3,6.7,37.1,7.3,31.8a1.4,1.4,0,0,0-.2.6c-1.5,5.3,9.4,12.9,24.2,17s28.1,3,29.6-2.3c0-.2.1-.4.1-.6C58.8,51.3,46,52.2,31.6,48.3Z"
                    style="mix-blend-mode:screen;opacity:0.7000000000000001;fill:url(#linear-gradient-3)" />
                <path
                    d="M31.3,16.1c13.5-2.9,25.5-.8,27.4,4.5a1.3,1.3,0,0,0-.1-.6C57.4,14.2,45,11.9,31,14.9S6.6,25,7.9,30.8c0,.3.1.5.1.7C7.6,25.7,17.7,19,31.3,16.1Z"
                    style="mix-blend-mode:screen;fill:url(#linear-gradient-4)" />
                <path
                    d="M45.4,23.7C55.6,37.1,58,52.6,51.1,59l.8-.6c7.9-6,5.7-22.1-4.8-35.9S21.5,2.2,13.7,8.2a2.7,2.7,0,0,0-.8.7C20.9,3.9,35.2,10.3,45.4,23.7Z"
                    style="mix-blend-mode:screen;fill:url(#linear-gradient-5)" />
                <path
                    d="M17.9,34C17.4,18,22.2,4.8,28.8,3.7h-.7c-7,.2-12.2,13.8-11.7,30.3S23,63.8,29.9,63.6h.8C24,62.8,18.4,50,17.9,34Z"
                    style="mix-blend-mode:screen;fill:url(#linear-gradient-6)" />
                <path
                    d="M42.2,56.8C29,61.5,16.4,60.5,13.5,54.6a2.5,2.5,0,0,0,.2.7c2.3,6.5,15.3,7.8,29,2.8s23-14.2,20.6-20.7l-.3-.7C64.5,43.2,55.5,52,42.2,56.8Z"
                    style="mix-blend-mode:screen;opacity:0.7000000000000001;fill:url(#linear-gradient-7)" />
                <g style="mix-blend-mode:screen">
                    <path
                        d="M52.9,14.2c0,5.6-8.9,10.1-19.8,10.1S13.3,19.8,13.3,14.2,22.2,4.1,33.1,4.1,52.9,8.6,52.9,14.2Z"
                        style="fill:url(#linear-gradient-8)" />
                </g>
            </symbol>
            <symbol id="Puce_6_-_Gris" data-name="Puce 6 - Gris" viewBox="0 0 48 48">
                <path d="M24,47.7A23.7,23.7,0,1,1,47.8,24,23.8,23.8,0,0,1,24,47.7Z"
                    style="fill:url(#linear-gradient-9)" />
                <path
                    d="M24,.5A23.5,23.5,0,1,1,.5,24,23.5,23.5,0,0,1,24,.5M24,0A24,24,0,1,0,48,24,23.9,23.9,0,0,0,24,0Z"
                    style="fill:#b2b4b7" />
                <path d="M41.5,24A17.5,17.5,0,1,1,24,6.5,17.5,17.5,0,0,1,41.5,24Z"
                    style="fill:url(#linear-gradient-10)" />
                <path d="M24,38.5A14.5,14.5,0,1,1,38.5,24,14.5,14.5,0,0,1,24,38.5Z"
                    style="fill:url(#radial-gradient-10)" />
                <path d="M24,10A14,14,0,1,1,10,24,14,14,0,0,1,24,10m0-1A15,15,0,1,0,39,24,15,15,0,0,0,24,9Z"
                    style="fill:#8c98a0" />
                <g style="mix-blend-mode:multiply;opacity:0.8">
                    <path d="M32.9,12a12.3,12.3,0,0,1,.2,2,15,15,0,0,1-15,15,14.3,14.3,0,0,1-8.9-3A15,15,0,1,0,32.9,12Z"
                        style="fill:url(#linear-gradient-11)" />
                </g>
            </symbol>
        </defs>


        <g id="bracelet">
            <path class="bracelet" id="bracelet_milieu"
                d="M591.8,59.6s52.1-20.3,98.5-18.9,95.7,16,95.7,16-29,271-26.1,349.3,27.5,307.2,27.5,307.2-47.8,21.7-92.7,18.8-97.1-17.4-97.1-17.4,23.8-239.1,23.8-333.3S591.8,59.6,591.8,59.6Z"
                transform="translate(-487.9 -36.4)" :fill="bracelet"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />
            <path class="bracelet" id="bracelet_haut"
                d="M588.6,217.1c1.3-63.4-.9-109.4,1-173.4,0,0,14.1-5.6,92.5-6.9s103.3,6,103.3,6,4,100.9,3.8,181.8c0,0-67.5-31.9-115.6-33.7S588.1,248.1,588.6,217.1Z"
                transform="translate(-487.9 -36.4)" :fill="bracelet"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />
            <path class="bracelet" id="bracelet_haut-2" data-name="bracelet"
                d="M792.6,544.6c-2,69.1-.4,119.1-3,188.9,0,0-14.2,6.1-92.7,7.1s-103.2-7-103.2-7-2.8-109.9-1.7-198.1c0,0,67.2,35.1,115.3,37.3S793.5,510.8,792.6,544.6Z"
                transform="translate(-487.9 -36.4)" :fill="bracelet"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />
        </g>


        <g id="boitier">

            <path class="cadran_exterieur" id="cadran_exterieur"
                d="M745.6,634.6H634a143.9,143.9,0,0,1-102.7-43.4h0A151.2,151.2,0,0,1,488.1,485V294.3A151.4,151.4,0,0,1,531.3,188h0A144.2,144.2,0,0,1,634,144.7H745.6A144.2,144.2,0,0,1,848.3,188h0a151.4,151.4,0,0,1,43.2,106.3V485a151.2,151.2,0,0,1-43.2,106.2h0A143.9,143.9,0,0,1,745.6,634.6Z"
                transform="translate(-487.9 -36.4)" :fill="cadran_exterieur"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />

            <path class="cadran_interieur" id="cadran_interieur"
                d="M738,606.2H641.7a128.5,128.5,0,0,1-92-38.9h0a130.7,130.7,0,0,1-37-91.2V307.4a130.7,130.7,0,0,1,37-91.2h0a128.5,128.5,0,0,1,92-38.9H738a128.5,128.5,0,0,1,92,38.9h0a130.6,130.6,0,0,1,36.9,91.2V476.1A130.6,130.6,0,0,1,830,567.3h0A128.5,128.5,0,0,1,738,606.2Z"
                transform="translate(-487.9 -36.4)" :fill="cadran_interieur"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />

            <path class="fond_boitier" id="fond_boitier"
                d="M732.6,587h-84a115.4,115.4,0,0,1-81.7-34.1h0a117.4,117.4,0,0,1-33.8-82.4V316.4A117.4,117.4,0,0,1,566.9,234h0a115,115,0,0,1,81.7-34.1h84A115,115,0,0,1,814.3,234h0a117.4,117.4,0,0,1,33.8,82.4V470.5a117.4,117.4,0,0,1-33.8,82.4h0A115.4,115.4,0,0,1,732.6,587Z"
                transform="translate(-487.9 -36.4)" :fill="fond_boitier"
                style="stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />

            <path class="bouton" id="bouton_1" d="M892.1,433.5c6.3-1.7,7.1,2.9,7-62.2-.1-61.6-.5-58.6-7.1-61Z"
                transform="translate(-487.9 -36.4)" :fill="bouton"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />

            <path class="bouton" id="bouton_bas"
                d="M627.4,634.9c1.9,25.4-2.8,28.9,64.7,28.6,63.9-.2,60.8-1.5,63.3-28.6Z"
                transform="translate(-487.9 -36.4)" :fill="bouton"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />

            <path class="bouton" id="bouton_haut"
                d="M754.4,144.4c-1.9-25.5,2.9-28.9-64.7-28.7-63.8.3-60.7,1.6-63.2,28.7Z"
                transform="translate(-487.9 -36.4)" :fill="bouton"
                style="fill:#fff;stroke:#000;stroke-miterlimit:10;stroke-width:0.5px" />
        </g>


        <g id="ecran">
            <text transform="translate(77.1 312.9)"
                style="font-size:76px;fill:#fff;font-family:Broadway;letter-spacing:0.02500513980263158em">1O:1O</text>
            <text transform="translate(110.1 239.9)"
                style="font-size:30px;fill:#fff;font-family:Broadway;letter-spacing:-0.01201171875em">
                <tspan xml:space="preserve">Lun. 24 oct.</tspan>
            </text>
            <text transform="translate(152.1 522.2)"
                style="font-size:30px;fill:#fff;font-family:ArialMT, Arial;letter-spacing:-0.01201171875em">TiK•TaK</text>
            <use width="35.9" height="35.92" transform="translate(287 397.1) scale(1.22)" xlink:href="#Chargement_4" />
            <use width="66.2" height="72" transform="translate(81.4 400.5) scale(0.64)" xlink:href="#Orb_-_Gris" />
            <use width="48" height="48" transform="translate(183.4 432.1)" xlink:href="#Puce_6_-_Gris" />
            <text x="-487.9" y="-36.4" />
        </g>
    </svg>
</template>