
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/
  :entries $ {}
  :files $ {}
    |app.comp.bending $ {}
      :defs $ {}
        |comp-bending $ quote
          defn comp-bending (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              mesh $ {}
                :position $ [] 100 100
                :geometry $ {}
                  :attributes $ []
                    {} (:id |aVertexPosition) (:size 2)
                      :buffer $ [] -400 -400 400 -400 400 400 -400 400
                    {} (:id |aUvs) (:size 2)
                      :buffer $ [] -1 -1 1 -1 1 1 -1 1
                  :index $ [] 0 1 2 0 3 2
                :shader $ {}
                  :vertex-source $ inline-shader |bending.vert
                  :fragment-source $ inline-shader |bending.frag
                :draw-mode :triangles
                :uniforms $ js-object
                  :n $ :n state
      :ns $ quote
        ns app.comp.bending $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defn comp-container (store)
            ; println "\"Store" store $ :tab store
            let
                cursor $ []
                states $ :states store
                tab $ either (:tab store) :kaleidoscope
              container ({})
                case-default tab
                  text $ {}
                    :text $ str "\"Unknown tab " tab
                    :position $ [] 1 1
                    :style $ {} (:font-size 32) (:font-family "|Josefin Sans")
                      :fill $ hslx 10 100 70
                  :moon $ comp-moon-demo (>> states :moon)
                  :fake-3d $ comp-fake-3d (>> states :fake-3d)
                  :isohypse $ comp-isohypse (>> states :isohypse)
                  :star-trail $ comp-star-trail (>> states :star-trail)
                  :star-link $ comp-star-link
                  :wind-ring $ comp-wind-ring (>> states :wind-ring)
                  :bending $ comp-bending (>> states :bending)
                  :kaleidoscope $ comp-kaleidoscope (>> states :kaleidoscope)
                comp-tabs
                  [] ([] :moon "\"Moon") ([] :fake-3d "\"Fake 3d") ([] :isohypse "\"Isohypse") ([] :star-link "\"Star Link") ([] :star-trail "\"Star Trail") ([] :wind-ring "\"Wind Ring") ([] :bending "\"Bending") ([] :kaleidoscope "\"Kaleidoscope")
                  , tab
                    {} $ :position ([] -408 -300)
                    fn (t d!) (d! :tab t)
      :ns $ quote
        ns app.comp.container $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >>
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.comp.moon-demo :refer $ comp-moon-demo
          app.comp.fake-3d :refer $ comp-fake-3d
          phlox.comp.tabs :refer $ comp-tabs
          app.comp.isohypse :refer $ comp-isohypse comp-wind-ring
          app.comp.star-trail :refer $ comp-star-trail comp-star-link
          app.comp.bending :refer $ comp-bending
          app.comp.kaleidoscope :refer $ comp-kaleidoscope
    |app.comp.fake-3d $ {}
      :defs $ {}
        |comp-fake-3d $ quote
          defn comp-fake-3d (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              mesh $ {}
                :position $ [] 0 0 
                :geometry $ {}
                  :attributes $ []
                    {} (:id |aVertexPosition) (:size 3)
                      :buffer $ concat &
                        ->
                          [] ([] -40 -40 0) ([] 40 -40 0) ([] 40 40 0) ([] -40 40 0) ([] -40 -40 -80) ([] 40 -40 -80) ([] 40 40 -80) ([] -40 40 -80)
                          map move-x
                          wo-log
                          map transform-3d
                          wo-log
                  :index $ concat &
                    [][] (0 1) (1 2) (2 3) (0 3) (0 4) (4 5) (5 6) (6 7) (4 7) (1 5) (2 6) (3 7)
                :draw-mode :line-strip
                :shader $ {}
                  :vertex-source $ inline-shader |fake-3d.vert
                  :fragment-source $ inline-shader |fake-3d.frag
                :uniforms $ js-object
                  :n $ :n state
        |move-x $ quote
          defn move-x (point)
            -> point
              map $ fn (p) (* p 2)
              update 0 $ fn (x) (+ x 0)
              update 1 $ fn (y) (+ y 0)
              update 2 $ fn (z) (- z 1200)
        |screen-vec $ quote
          def screen-vec $ [] 120 50 -600
        |square $ quote
          defn square (x) (&* x x)
        |sum-squares $ quote
          defn sum-squares (a b)
            &+ (&* a a) (&* b b)
        |transform-3d $ quote
          defn transform-3d (point)
            let
                ; look-distance $ wo-log (new-lookat-point)
                ; look-distance screen-vec
                s $ noted "\"back size of light cone?" 2
                x $ nth point 0
                y $ nth point 1
                z $ nth point 2
                a $ nth screen-vec 0
                b $ nth screen-vec 1
                c $ nth screen-vec 2
                r $ /
                  + (* a x) (* b y) (* c z)
                  + (square a) (square b) (square c)
                q $ / (+ s 1) (+ r s)
                L1 $ sqrt
                  + (* a a b b)
                    square $ sum-squares a c
                    * b b c c
                y' $ *
                  /
                    + (* q y) (* b q s) (* -1 b s) (* -1 b)
                    sum-squares a c
                  , L1
                x' $ *
                  /
                    -
                      + (* q x) (* a q s) (* -1 s a) (* -1 a)
                      * y' $ / (* -1 a b) L1
                    , c -1
                  sqrt $ sum-squares a c
                z' $ negate r
              ; println $ [] x' y' z'
              -> ([] x' y' z')
                ; update 1 $ fn (v)
                  -> v (/ js/window.innerHeight) (* js/window.innerWidth)
                map $ fn (p) p
      :ns $ quote
        ns app.comp.fake-3d $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.comp.isohypse $ {}
      :defs $ {}
        |comp-isohypse $ quote
          defn comp-isohypse (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              mesh $ {}
                :position $ [] 100 100
                :geometry $ {}
                  :attributes $ []
                    {} (:id |aVertexPosition) (:size 2)
                      :buffer $ [] -400 -400 400 -400 400 400 -400 400
                    {} (:id |aUvs) (:size 2)
                      :buffer $ [] -1 -1 1 -1 1 1 -1 1
                  :index $ [] 0 1 2 0 3 2
                :shader $ {}
                  :vertex-source $ inline-shader |isohypse.vert
                  :fragment-source $ inline-shader |isohypse.frag
                :draw-mode :triangles
                :uniforms $ js-object
                  :n $ :n state
        |comp-wind-ring $ quote
          defn comp-wind-ring (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              mesh $ {}
                :position $ [] 100 100
                :geometry $ {}
                  :attributes $ []
                    {} (:id |aVertexPosition) (:size 2)
                      :buffer $ [] -400 -400 400 -400 400 400 -400 400
                    {} (:id |aUvs) (:size 2)
                      :buffer $ [] -1 -1 1 -1 1 1 -1 1
                  :index $ [] 0 1 2 0 3 2
                :shader $ {}
                  :vertex-source $ inline-shader |wind-ring.vert
                  :fragment-source $ inline-shader |wind-ring.frag
                :draw-mode :triangles
                :uniforms $ js-object
                  :uTime $ wo-log
                    / (js/performance.now) 1000
                :on $ {}
                  :pointermove $ fn (e d!)
                    d! cursor $ update state :t inc
      :ns $ quote
        ns app.comp.isohypse $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh group
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.comp.kaleidoscope $ {}
      :defs $ {}
        |comp-kaleidoscope $ quote
          defn comp-kaleidoscope (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} (:n 1)
                    :shift $ [] 0 0
                    :scale 1
                    :parts 1.99
                    :radius 0.8
                shift $ :shift state
              group ({})
                mesh $ {}
                  :position $ [] 100 100
                  :geometry $ {}
                    :attributes $ []
                      {} (:id |aVertexPosition) (:size 2)
                        :buffer $ [] -400 -400 400 -400 400 400 -400 400
                      {} (:id |aUvs) (:size 2)
                        :buffer $ [] -1 -1 1 -1 1 1 -1 1
                    :index $ [] 0 1 2 0 3 2
                  :shader $ {}
                    :vertex-source $ inline-shader |kaleidoscope.vert
                    :fragment-source $ inline-shader |kaleidoscope.frag
                  :draw-mode :triangles
                  :uniforms $ js-object
                    :n $ :n state
                    :shift $ js-array
                      * 0.01 $ nth shift 0
                      * 0.01 $ nth shift 1
                    :colorTexture $ .!from PIXI/Texture
                      if
                        blank? $ .-src file-image
                        , "\"./assets/bricks.jpeg" $ .-src file-image
                    ; :color2Texture $ .!from PIXI/Texture "\"./assets/orange-flower.jpeg"
                    :scale $ :scale state
                    :parts $ :parts state
                    :radius $ :radius state
                comp-drag-point (>> states :p3)
                  {} (:position shift) (:unit 1.0) (:radius 6)
                    :fill $ hslx 0 90 100
                    ; :color $ hslx 0 90 100
                    :alpha 1
                    :hide-text? true
                    :on-change $ fn (position d!)
                      d! cursor $ assoc state :shift position
                comp-slider (>> states :scale)
                  {} (:title "\"scale") (:unit 0.01) (:min 0.001) (:max 2.0)
                    :position $ [] 20 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :scale state
                    :on-change $ fn (value d!)
                      d! cursor $ assoc state :scale value
                comp-slider (>> states :parts)
                  {} (:title "\"parts") (:unit 0.01) (:min 1.99) (:max 12)
                    :position $ [] 160 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :parts state
                    :on-change $ fn (value d!)
                      d! cursor $ assoc state :parts value
                comp-slider (>> states :radius)
                  {} (:title "\"radius") (:unit 0.01) (:min 0.1) (:max 0.9)
                    :position $ [] 300 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :radius state
                    :on-change $ fn (value d!)
                      d! cursor $ assoc state :radius value
        |file-image $ quote
          def file-image $ let
              img $ new js/Image
            if-let
              old $ js/document.querySelector "\"input"
              .!remove old
            &let
              el $ js/document.createElement "\"input"
              -> el .-type $ set! "\"file"
              js/document.body.appendChild el
              .!addEventListener el "\"change" $ fn (event)
                let
                    file $ -> event .-target .-files .-0
                    reader $ new js/FileReader
                  set! (.-onload reader)
                    fn (e)
                      set! (.-src img) (-> e .-target .-result)
                  set! (.-onerror reader)
                    fn (e) (js/console.error "\"Failed to load image" e)
                  .!readAsDataURL reader file
              if
                = "\"input" $ get-env "\"image" "\"builtin"
                set! (.-className el) "\"visible"
              , el
            , img
      :ns $ quote
        ns app.comp.kaleidoscope $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh group
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          phlox.comp.slider :refer $ comp-slider
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
          "\"pixi.js" :as PIXI
    |app.comp.moon-demo $ {}
      :defs $ {}
        |comp-moon-demo $ quote
          defn comp-moon-demo (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              mesh $ {}
                :position $ [] 100 100
                :geometry $ {}
                  :attributes $ []
                    {} (:id |aVertexPosition) (:size 2)
                      :buffer $ [] -400 -400 400 -400 400 400 -400 400
                    {} (:id |aUvs) (:size 2)
                      :buffer $ [] -1 -1 1 -1 1 1 -1 1
                  :index $ [] 0 1 2 0 3 2
                :shader $ {}
                  :vertex-source $ inline-shader |moon.vert
                  :fragment-source $ inline-shader |moon.frag
                :draw-mode :triangles
                :uniforms $ js-object
                  :n $ :n state
      :ns $ quote
        ns app.comp.moon-demo $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.comp.star-trail $ {}
      :defs $ {}
        |comp-star-link $ quote
          defn comp-star-link () (; "\"stars however in 2D space")
            mesh $ {}
              :position $ [] 100 100
              :geometry $ {}
                :attributes $ []
                  {} (:id |aVertexPosition) (:size 2)
                    :buffer $ [] -400 -400 400 -400 400 400 -400 400
                  {} (:id |aUvs) (:size 2)
                    :buffer $ [] -1 -1 1 -1 1 1 -1 1
                :index $ [] 0 1 2 0 3 2
              :shader $ {}
                :vertex-source $ inline-shader |star-link.vert
                :fragment-source $ inline-shader |star-link.frag
              :draw-mode :triangles
              :uniforms $ js-object
        |comp-star-trail $ quote
          defn comp-star-trail (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :t 0
              mesh $ {}
                :position $ [] 100 100
                :geometry $ {}
                  :attributes $ []
                    {} (:id |aVertexPosition) (:size 2)
                      :buffer $ [] -400 -400 400 -400 400 400 -400 400
                    {} (:id |aUvs) (:size 2)
                      :buffer $ [] -1 -1 1 -1 1 1 -1 1
                  :index $ [] 0 1 2 0 3 2
                :shader $ {}
                  :vertex-source $ inline-shader |star-trail.vert
                  :fragment-source $ inline-shader |star-trail.frag
                :draw-mode :triangles
                :uniforms $ js-object
                  :uTime $ wo-log
                    / (js/performance.now) 1000
                :on $ {}
                  :pointermove $ fn (e d!)
                    d! cursor $ update state :t inc
      :ns $ quote
        ns app.comp.star-trail $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.config $ {}
      :defs $ {}
        |inline-shader $ quote
          defmacro inline-shader (name)
            read-file $ str "\"shaders/" name
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/phlox/") (:title "\"Phlox") (:icon "\"http://cdn.tiye.me/logo/quamolit.png") (:storage-key "\"phlox")
      :ns $ quote
        ns app.config $ :require ("\"mobile-detect" :default mobile-detect)
    |app.main $ {}
      :defs $ {}
        |*store $ quote (defatom *store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and dev? $ not= op :states
              println "\"dispatch!" op op-data
            let
                op-id $ nanoid
                op-time $ js/Date.now
              reset! *store $ updater @*store op op-data op-id op-time
        |main! $ quote
          defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            -> (new FontFaceObserver "\"Josefin Sans") (.!load)
              .!then $ fn (event) (render-app!)
            add-watch *store :change $ fn (store prev) (render-app!)
            when mobile? $ render-control!
            start-control-loop! 8 on-control-event
            println "\"App Started"
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (clear-phlox-caches!) (remove-watch *store :change)
              add-watch *store :change $ fn (store prev) (render-app!)
              render-app!
              when mobile? $ replace-control-loop! 8 on-control-event
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! (? arg)
            render! (comp-container @*store) dispatch! $ or arg ({})
      :ns $ quote
        ns app.main $ :require ("\"pixi.js" :as PIXI)
          phlox.core :refer $ render! clear-phlox-caches! update-viewer! on-control-event
          app.comp.container :refer $ comp-container
          app.schema :as schema
          phlox.config :refer $ dev? mobile?
          "\"nanoid" :refer $ nanoid
          app.updater :refer $ updater
          "\"fontfaceobserver-es" :default FontFaceObserver
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {} (:tab nil)
            :states $ {}
            :cursor $ []
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"unknown op" op op-data) store
              :tab $ assoc store :tab op-data
              :states $ update-states store op-data
              :hydrate-storage op-data
      :ns $ quote
        ns app.updater $ :require
          [] phlox.cursor :refer $ [] update-states
