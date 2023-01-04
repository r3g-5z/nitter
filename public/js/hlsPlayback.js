// @license http://www.apache.org/licenses/LICENSE-2.0 Apache-2.0
// @source  https://github.com/video-dev/hls.js
// @version v1.2.9
function playVideo(e){const t=e.parentElement.querySelector("video"),a=t.getAttribute("data-url");if(t.setAttribute("controls",""),e.style.display="none",Hls.isSupported()){var l=new Hls({autoStartLoad:!1});l.loadSource(a),l.attachMedia(t),l.on(Hls.Events.MANIFEST_PARSED,(function(){l.loadLevel=l.levels.length-1,l.startLoad(),t.play()}))}else t.canPlayType("application/vnd.apple.mpegurl")&&(t.src=a,t.addEventListener("canplay",(function(){t.play()})))}
// @license-end