
{} (:package |app)
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1573356299931) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615450365814) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1573356299931) (:by |rJG4IHzWf) (:text |comp-container)
              |r $ %{} :Expr (:at 1573356299931) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573662792335) (:by |rJG4IHzWf) (:text |store)
              |t $ %{} :Expr (:at 1574442738592) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1582367227989) (:by |rJG4IHzWf) (:text |;)
                  |T $ %{} :Leaf (:at 1574442742932) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1574442744071) (:by |rJG4IHzWf) (:text "|\"Store")
                  |r $ %{} :Leaf (:at 1574442745655) (:by |rJG4IHzWf) (:text |store)
                  |v $ %{} :Expr (:at 1574442779990) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574442779990) (:by |rJG4IHzWf) (:text |:tab)
                      |j $ %{} :Leaf (:at 1574442779990) (:by |rJG4IHzWf) (:text |store)
              |v $ %{} :Expr (:at 1583036824444) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1583036827332) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1583036827630) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1583036827827) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036828777) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1583036829493) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1583036830034) (:by |rJG4IHzWf) (:text |[])
                      |j $ %{} :Expr (:at 1583036831664) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036832446) (:by |rJG4IHzWf) (:text |states)
                          |j $ %{} :Expr (:at 1583036832651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1583036833411) (:by |rJG4IHzWf) (:text |:states)
                              |j $ %{} :Leaf (:at 1583036834181) (:by |rJG4IHzWf) (:text |store)
                      |n $ %{} :Expr (:at 1651861705164) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651861706399) (:by |rJG4IHzWf) (:text |tab)
                          |b $ %{} :Expr (:at 1651861854934) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1651861901704) (:by |rJG4IHzWf) (:text |either)
                              |T $ %{} :Expr (:at 1651861708338) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651861708838) (:by |rJG4IHzWf) (:text |:tab)
                                  |b $ %{} :Leaf (:at 1651861709479) (:by |rJG4IHzWf) (:text |store)
                              |b $ %{} :Leaf (:at 1655107926233) (:by |rJG4IHzWf) (:text |:kaleidoscope)
                  |T $ %{} :Expr (:at 1574353986671) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1574353987962) (:by |rJG4IHzWf) (:text |container)
                      |L $ %{} :Expr (:at 1574353988241) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1574353988566) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655802947872) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655802949226) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Expr (:at 1655802949580) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655802950711) (:by |rJG4IHzWf) (:text |[])
                                  |b $ %{} :Leaf (:at 1655802953793) (:by |rJG4IHzWf) (:text |-200)
                                  |h $ %{} :Leaf (:at 1655802955438) (:by |rJG4IHzWf) (:text |-100)
                      |n $ %{} :Expr (:at 1655275873629) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655275873629) (:by |rJG4IHzWf) (:text |comp-kaleidoscope)
                          |b $ %{} :Expr (:at 1655275873629) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655275873629) (:by |rJG4IHzWf) (:text |>>)
                              |b $ %{} :Leaf (:at 1655275873629) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Leaf (:at 1655275873629) (:by |rJG4IHzWf) (:text |:kaleidoscope)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1573356292089) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1573356292089) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1573356292089) (:by |rJG4IHzWf) (:text |app.comp.container)
            |r $ %{} :Expr (:at 1573356347927) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1573356351680) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1573356351873) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1573356354451) (:by |rJG4IHzWf) (:text |phlox.core)
                    |r $ %{} :Leaf (:at 1573356355219) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1573356355436) (:by |rJG4IHzWf)
                      :data $ {}
                        |s $ %{} :Leaf (:at 1581850032842) (:by |rJG4IHzWf) (:text |g)
                        |t $ %{} :Leaf (:at 1581003569723) (:by |rJG4IHzWf) (:text |hslx)
                        |v $ %{} :Leaf (:at 1573974176863) (:by |rJG4IHzWf) (:text |rect)
                        |x $ %{} :Leaf (:at 1573974179009) (:by |rJG4IHzWf) (:text |circle)
                        |y $ %{} :Leaf (:at 1573974179800) (:by |rJG4IHzWf) (:text |text)
                        |yT $ %{} :Leaf (:at 1573974254119) (:by |rJG4IHzWf) (:text |container)
                        |yb $ %{} :Leaf (:at 1574181633700) (:by |rJG4IHzWf) (:text |graphics)
                        |yj $ %{} :Leaf (:at 1574007057783) (:by |rJG4IHzWf) (:text |create-list)
                        |yr $ %{} :Leaf (:at 1584639017252) (:by |rJG4IHzWf) (:text |>>)
                |x $ %{} :Expr (:at 1583034151993) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1583034161865) (:by |rJG4IHzWf) (:text |phlox.comp.button)
                    |r $ %{} :Leaf (:at 1583034163079) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1583034163311) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1583034313642) (:by |rJG4IHzWf) (:text |comp-button)
                |yT $ %{} :Expr (:at 1583040803587) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1583040803587) (:by |rJG4IHzWf) (:text |phlox.comp.drag-point)
                    |r $ %{} :Leaf (:at 1583040803587) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1583040803587) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1583040803587) (:by |rJG4IHzWf) (:text |comp-drag-point)
                |yyT $ %{} :Expr (:at 1587288593017) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1587288596975) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1587288597735) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1587288598134) (:by |rJG4IHzWf) (:text |ui)
                |yyj $ %{} :Expr (:at 1612613233615) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1612613236216) (:by |rJG4IHzWf) (:text |memof.alias)
                    |r $ %{} :Leaf (:at 1612613237132) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1612613237369) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1612613239222) (:by |rJG4IHzWf) (:text |memof-call)
                |zn $ %{} :Expr (:at 1655068156892) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655068158745) (:by |rJG4IHzWf) (:text |app.comp.kaleidoscope)
                    |b $ %{} :Leaf (:at 1655068159708) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655068159917) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655068162809) (:by |rJG4IHzWf) (:text |comp-kaleidoscope)
    |app.comp.kaleidoscope $ %{} :FileEntry
      :defs $ {}
        |comp-kaleidoscope $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651509288897) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651509291071) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1655068175916) (:by |rJG4IHzWf) (:text |comp-kaleidoscope)
              |h $ %{} :Expr (:at 1651509288897) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651509327256) (:by |rJG4IHzWf) (:text |states)
              |l $ %{} :Expr (:at 1651509369329) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651509370847) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1651509371064) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1651509371183) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651509372764) (:by |rJG4IHzWf) (:text |cursor)
                          |b $ %{} :Expr (:at 1651509372973) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651509374191) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1651509375002) (:by |rJG4IHzWf) (:text |states)
                      |b $ %{} :Expr (:at 1651509375620) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651509376203) (:by |rJG4IHzWf) (:text |state)
                          |b $ %{} :Expr (:at 1651509376424) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651509380112) (:by |rJG4IHzWf) (:text |or)
                              |b $ %{} :Expr (:at 1651509380335) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651509380884) (:by |rJG4IHzWf) (:text |:data)
                                  |b $ %{} :Leaf (:at 1651509381691) (:by |rJG4IHzWf) (:text |states)
                              |h $ %{} :Expr (:at 1651509382262) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651509382637) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1651509382824) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651509390398) (:by |rJG4IHzWf) (:text |:n)
                                      |b $ %{} :Leaf (:at 1651509391468) (:by |rJG4IHzWf) (:text |1)
                                  |l $ %{} :Expr (:at 1655069569246) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655069570111) (:by |rJG4IHzWf) (:text |:scale)
                                      |b $ %{} :Leaf (:at 1655756181029) (:by |rJG4IHzWf) (:text |0.5)
                                  |o $ %{} :Expr (:at 1655069569246) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655077363435) (:by |rJG4IHzWf) (:text |:parts)
                                      |b $ %{} :Leaf (:at 1655756110542) (:by |rJG4IHzWf) (:text |2.5)
                                  |q $ %{} :Expr (:at 1655069569246) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655077510264) (:by |rJG4IHzWf) (:text |:radius)
                                      |b $ %{} :Leaf (:at 1655756161624) (:by |rJG4IHzWf) (:text |0.4)
                                  |s $ %{} :Expr (:at 1655297842575) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655297845087) (:by |rJG4IHzWf) (:text |:regress)
                                      |b $ %{} :Leaf (:at 1655297846444) (:by |rJG4IHzWf) (:text |1)
                                  |t $ %{} :Expr (:at 1655297848387) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655297850965) (:by |rJG4IHzWf) (:text |:rotate)
                                      |b $ %{} :Expr (:at 1655740767985) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1655740769918) (:by |rJG4IHzWf) (:text |noted)
                                          |L $ %{} :Leaf (:at 1655740791214) (:by |rJG4IHzWf) (:text "|\"bad name, it's skewing and ratating the reflection")
                                          |T $ %{} :Leaf (:at 1655297851584) (:by |rJG4IHzWf) (:text |0)
                                  |u $ %{} :Expr (:at 1655312122448) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312123310) (:by |rJG4IHzWf) (:text |:spin)
                                      |b $ %{} :Expr (:at 1655740755300) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1655740757630) (:by |rJG4IHzWf) (:text |noted)
                                          |L $ %{} :Leaf (:at 1655740766112) (:by |rJG4IHzWf) (:text "|\"rotate background image")
                                          |T $ %{} :Leaf (:at 1655312124055) (:by |rJG4IHzWf) (:text |0)
                                  |u5 $ %{} :Expr (:at 1655741762219) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655741786329) (:by |rJG4IHzWf) (:text |:shape-spin)
                                      |b $ %{} :Expr (:at 1655741770924) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655741771610) (:by |rJG4IHzWf) (:text |noted)
                                          |b $ %{} :Leaf (:at 1655741781329) (:by |rJG4IHzWf) (:text "|\"rotate whole scene")
                                          |h $ %{} :Leaf (:at 1655741789095) (:by |rJG4IHzWf) (:text |0)
                                  |uD $ %{} :Expr (:at 1655740718092) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740720214) (:by |rJG4IHzWf) (:text |:move-x)
                                      |b $ %{} :Expr (:at 1655740724472) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1655740725756) (:by |rJG4IHzWf) (:text |noted)
                                          |L $ %{} :Leaf (:at 1655740742158) (:by |rJG4IHzWf) (:text "|\"move shape horizontally")
                                          |T $ %{} :Leaf (:at 1655740722210) (:by |rJG4IHzWf) (:text |0)
                                  |uT $ %{} :Expr (:at 1655740716799) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740716799) (:by |rJG4IHzWf) (:text |:shift)
                                      |b $ %{} :Expr (:at 1655740716799) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655740716799) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655756249034) (:by |rJG4IHzWf) (:text |100)
                                          |h $ %{} :Leaf (:at 1655802736090) (:by |rJG4IHzWf) (:text |100)
                                  |v $ %{} :Expr (:at 1655312154028) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312157015) (:by |rJG4IHzWf) (:text |:spin-position)
                                      |b $ %{} :Expr (:at 1655312157455) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312158214) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655741933166) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655742136552) (:by |rJG4IHzWf) (:text |-240)
                                  |w $ %{} :Expr (:at 1655312154028) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655741804162) (:by |rJG4IHzWf) (:text |:shape-spin-position)
                                      |b $ %{} :Expr (:at 1655312157455) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312158214) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655741937289) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655742138783) (:by |rJG4IHzWf) (:text |-120)
                                  |x $ %{} :Expr (:at 1657690284194) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690287847) (:by |rJG4IHzWf) (:text |:skip)
                                      |b $ %{} :Leaf (:at 1657690288575) (:by |rJG4IHzWf) (:text |0)
                      |h $ %{} :Expr (:at 1655069336907) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655069340778) (:by |rJG4IHzWf) (:text |shift)
                          |b $ %{} :Expr (:at 1655069341524) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655069342860) (:by |rJG4IHzWf) (:text |:shift)
                              |b $ %{} :Leaf (:at 1655069344276) (:by |rJG4IHzWf) (:text |state)
                  |T $ %{} :Expr (:at 1655069234867) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1655069237598) (:by |rJG4IHzWf) (:text |group)
                      |L $ %{} :Expr (:at 1655069238241) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655069238600) (:by |rJG4IHzWf) (:text |{})
                      |T $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |mesh)
                          |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |{})
                              |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:position)
                                  |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |[])
                                      |b $ %{} :Leaf (:at 1651509493848) (:by |rJG4IHzWf) (:text |100)
                                      |h $ %{} :Leaf (:at 1651509495620) (:by |rJG4IHzWf) (:text |100)
                              |l $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:geometry)
                                  |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:attributes)
                                          |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |[])
                                              |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:id)
                                                      |b $ %{} :Leaf (:at 1651509936008) (:by |rJG4IHzWf) (:text ||aVertexPosition)
                                                  |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:size)
                                                      |b $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |2)
                                                  |l $ %{} :Expr (:at 1651509979057) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |:buffer)
                                                      |b $ %{} :Expr (:at 1651509979057) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |[])
                                                          |b $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400)
                                                          |h $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400)
                                                          |l $ %{} :Leaf (:at 1651510244128) (:by |rJG4IHzWf) (:text |400)
                                                          |o $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400)
                                                          |q $ %{} :Leaf (:at 1651510246221) (:by |rJG4IHzWf) (:text |400)
                                                          |s $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |400)
                                                          |t $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400)
                                                          |u $ %{} :Leaf (:at 1651509979057) (:by |rJG4IHzWf) (:text |400)
                                              |l $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |{})
                                                  |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:id)
                                                      |b $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text ||aUvs)
                                                  |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:size)
                                                      |b $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |2)
                                                  |l $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:buffer)
                                                      |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |[])
                                                          |b $ %{} :Leaf (:at 1651510133746) (:by |rJG4IHzWf) (:text |-1)
                                                          |h $ %{} :Leaf (:at 1651510136641) (:by |rJG4IHzWf) (:text |-1)
                                                          |l $ %{} :Leaf (:at 1651510241267) (:by |rJG4IHzWf) (:text |1)
                                                          |o $ %{} :Leaf (:at 1651510141778) (:by |rJG4IHzWf) (:text |-1)
                                                          |q $ %{} :Leaf (:at 1651510242326) (:by |rJG4IHzWf) (:text |1)
                                                          |s $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |1)
                                                          |t $ %{} :Leaf (:at 1651510441321) (:by |rJG4IHzWf) (:text |-1)
                                                          |u $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |1)
                                      |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:index)
                                          |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |[])
                                              |b $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |0)
                                              |h $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |1)
                                              |l $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |2)
                                              |o $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |0)
                                              |q $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |3)
                                              |s $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |2)
                              |o $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:shader)
                                  |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |{})
                                      |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:vertex-source)
                                          |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651509503795) (:by |rJG4IHzWf) (:text |inline-shader)
                                              |b $ %{} :Leaf (:at 1655068193536) (:by |rJG4IHzWf) (:text ||kaleidoscope.vert)
                                      |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:fragment-source)
                                          |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651509505868) (:by |rJG4IHzWf) (:text |inline-shader)
                                              |b $ %{} :Leaf (:at 1655068194839) (:by |rJG4IHzWf) (:text ||kaleidoscope.frag)
                              |p $ %{} :Expr (:at 1651862687674) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651862690949) (:by |rJG4IHzWf) (:text |:draw-mode)
                                  |b $ %{} :Leaf (:at 1651862694965) (:by |rJG4IHzWf) (:text |:triangles)
                              |q $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |:uniforms)
                                  |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |js-object)
                                      |h $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651509608098) (:by |rJG4IHzWf) (:text |:n)
                                          |b $ %{} :Expr (:at 1651509489494) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651509606748) (:by |rJG4IHzWf) (:text |:n)
                                              |b $ %{} :Leaf (:at 1651509489494) (:by |rJG4IHzWf) (:text |state)
                                      |j $ %{} :Expr (:at 1655069134082) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655069136870) (:by |rJG4IHzWf) (:text |:shift)
                                          |b $ %{} :Expr (:at 1655069137535) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655069139501) (:by |rJG4IHzWf) (:text |js-array)
                                              |b $ %{} :Expr (:at 1655069356326) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1655069358505) (:by |rJG4IHzWf) (:text |*)
                                                  |L $ %{} :Leaf (:at 1655069359478) (:by |rJG4IHzWf) (:text |0.01)
                                                  |T $ %{} :Expr (:at 1655069331199) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655069352199) (:by |rJG4IHzWf) (:text |nth)
                                                      |X $ %{} :Leaf (:at 1655069354975) (:by |rJG4IHzWf) (:text |shift)
                                                      |b $ %{} :Leaf (:at 1655069353187) (:by |rJG4IHzWf) (:text |0)
                                              |h $ %{} :Expr (:at 1655069356326) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1655069358505) (:by |rJG4IHzWf) (:text |*)
                                                  |L $ %{} :Leaf (:at 1655069359478) (:by |rJG4IHzWf) (:text |0.01)
                                                  |T $ %{} :Expr (:at 1655069331199) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655069352199) (:by |rJG4IHzWf) (:text |nth)
                                                      |X $ %{} :Leaf (:at 1655069354975) (:by |rJG4IHzWf) (:text |shift)
                                                      |b $ %{} :Leaf (:at 1655069363786) (:by |rJG4IHzWf) (:text |1)
                                      |l $ %{} :Expr (:at 1655068499000) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655068861984) (:by |rJG4IHzWf) (:text |:colorTexture)
                                          |b $ %{} :Expr (:at 1655105374380) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1655105376807) (:by |rJG4IHzWf) (:text |.!from)
                                              |L $ %{} :Leaf (:at 1655105378641) (:by |rJG4IHzWf) (:text |PIXI/Texture)
                                              |T $ %{} :Expr (:at 1655105316539) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655105407769) (:by |rJG4IHzWf) (:text |if)
                                                  |X $ %{} :Expr (:at 1655105408639) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655105409753) (:by |rJG4IHzWf) (:text |blank?)
                                                      |b $ %{} :Expr (:at 1655105410956) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655105410956) (:by |rJG4IHzWf) (:text |.-src)
                                                          |b $ %{} :Leaf (:at 1655105410956) (:by |rJG4IHzWf) (:text |file-image)
                                                  |Z $ %{} :Leaf (:at 1655756061248) (:by |rJG4IHzWf) (:text "|\"https://cdn.tiye.me/logo/tiye.jpg")
                                                  |b $ %{} :Expr (:at 1655105316539) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655105316539) (:by |rJG4IHzWf) (:text |.-src)
                                                      |b $ %{} :Leaf (:at 1655105316539) (:by |rJG4IHzWf) (:text |file-image)
                                      |m $ %{} :Expr (:at 1655068499000) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1655103867069) (:by |rJG4IHzWf) (:text |;)
                                          |T $ %{} :Leaf (:at 1655102590556) (:by |rJG4IHzWf) (:text |:color2Texture)
                                          |b $ %{} :Expr (:at 1655068530021) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1655068540421) (:by |rJG4IHzWf) (:text |.!from)
                                              |T $ %{} :Leaf (:at 1655068703646) (:by |rJG4IHzWf) (:text |PIXI/Texture)
                                              |b $ %{} :Leaf (:at 1655756046719) (:by |rJG4IHzWf) (:text "|\"https://cdn.tiye.me/logo/tiye.jpg")
                                      |o $ %{} :Expr (:at 1655069623037) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655069624128) (:by |rJG4IHzWf) (:text |:scale)
                                          |b $ %{} :Expr (:at 1655069627461) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655069628177) (:by |rJG4IHzWf) (:text |:scale)
                                              |b $ %{} :Leaf (:at 1655069630290) (:by |rJG4IHzWf) (:text |state)
                                      |q $ %{} :Expr (:at 1655069623037) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655077419352) (:by |rJG4IHzWf) (:text |:parts)
                                          |b $ %{} :Expr (:at 1655069627461) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655077421970) (:by |rJG4IHzWf) (:text |:parts)
                                              |b $ %{} :Leaf (:at 1655069630290) (:by |rJG4IHzWf) (:text |state)
                                      |s $ %{} :Expr (:at 1655069623037) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655077540938) (:by |rJG4IHzWf) (:text |:radius)
                                          |b $ %{} :Expr (:at 1655069627461) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655077541913) (:by |rJG4IHzWf) (:text |:radius)
                                              |b $ %{} :Leaf (:at 1655069630290) (:by |rJG4IHzWf) (:text |state)
                                      |t $ %{} :Expr (:at 1655069623037) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655297952309) (:by |rJG4IHzWf) (:text |:regress)
                                          |b $ %{} :Expr (:at 1655069627461) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655297954135) (:by |rJG4IHzWf) (:text |:regress)
                                              |b $ %{} :Leaf (:at 1655069630290) (:by |rJG4IHzWf) (:text |state)
                                      |v $ %{} :Expr (:at 1655312213849) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312214726) (:by |rJG4IHzWf) (:text |:spin)
                                          |b $ %{} :Expr (:at 1655312215341) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312217123) (:by |rJG4IHzWf) (:text |:spin)
                                              |b $ %{} :Leaf (:at 1655312217987) (:by |rJG4IHzWf) (:text |state)
                                      |w $ %{} :Expr (:at 1655312213849) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655740844039) (:by |rJG4IHzWf) (:text |:moveX)
                                          |b $ %{} :Expr (:at 1655312215341) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655741083258) (:by |rJG4IHzWf) (:text |:move-x)
                                              |b $ %{} :Leaf (:at 1655312217987) (:by |rJG4IHzWf) (:text |state)
                                      |x $ %{} :Expr (:at 1655742005221) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655742008238) (:by |rJG4IHzWf) (:text |:shapeSpin)
                                          |b $ %{} :Expr (:at 1655742010420) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655742013519) (:by |rJG4IHzWf) (:text |:shape-spin)
                                              |b $ %{} :Leaf (:at 1655742010420) (:by |rJG4IHzWf) (:text |state)
                                      |y $ %{} :Expr (:at 1657690300879) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657690302576) (:by |rJG4IHzWf) (:text |:skip)
                                          |b $ %{} :Expr (:at 1657690305221) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657690304243) (:by |rJG4IHzWf) (:text |:skip)
                                              |b $ %{} :Leaf (:at 1657690306035) (:by |rJG4IHzWf) (:text |state)
                      |X $ %{} :Expr (:at 1655275986643) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655275987476) (:by |rJG4IHzWf) (:text |group)
                          |b $ %{} :Expr (:at 1655275987878) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655275988668) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1655276009990) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276011241) (:by |rJG4IHzWf) (:text |:position)
                                  |b $ %{} :Expr (:at 1655276011536) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276011740) (:by |rJG4IHzWf) (:text |[])
                                      |b $ %{} :Leaf (:at 1655276036702) (:by |rJG4IHzWf) (:text |520)
                                      |h $ %{} :Leaf (:at 1655802728809) (:by |rJG4IHzWf) (:text |0)
                          |g $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655802660461) (:by |rJG4IHzWf) (:text |comp-spin-slider)
                              |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:parts)
                              |h $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655803194069) (:by |rJG4IHzWf) (:text |:label)
                                      |b $ %{} :Leaf (:at 1655803201815) (:by |rJG4IHzWf) (:text "|\"Parts")
                                  |h $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655802800053) (:by |rJG4IHzWf) (:text |0.08)
                                  |l $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |1.9)
                                  |o $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |12)
                                  |q $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655802673894) (:by |rJG4IHzWf) (:text |80)
                                          |h $ %{} :Leaf (:at 1655802684124) (:by |rJG4IHzWf) (:text |-240)
                                  |s $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655802665830) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |70)
                                  |t $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655802666348) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |30)
                                  |u $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:parts)
                                          |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |state)
                                  |uT $ %{} :Expr (:at 1655802762950) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655802783556) (:by |rJG4IHzWf) (:text |:fraction)
                                      |b $ %{} :Leaf (:at 1655802764950) (:by |rJG4IHzWf) (:text |3)
                                  |v $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655742480151) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |:parts)
                                                  |l $ %{} :Leaf (:at 1655742480151) (:by |rJG4IHzWf) (:text |value)
                          |l $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |comp-slider)
                              |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:scale)
                              |h $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text "|\"scale")
                                  |h $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |0.01)
                                  |l $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1655312813989) (:by |rJG4IHzWf) (:text |0.2)
                                  |o $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1655312842513) (:by |rJG4IHzWf) (:text |5.0)
                                  |q $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655276060354) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1655802699524) (:by |rJG4IHzWf) (:text |-160)
                                  |s $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |70)
                                  |t $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |30)
                                  |u $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:scale)
                                          |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655275995767) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |:scale)
                                                  |l $ %{} :Leaf (:at 1655275995767) (:by |rJG4IHzWf) (:text |value)
                          |q $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |comp-slider)
                              |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:radius)
                              |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text "|\"radius")
                                  |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |0.01)
                                  |l $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1655298368260) (:by |rJG4IHzWf) (:text |0.02)
                                  |o $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1655313543757) (:by |rJG4IHzWf) (:text |2)
                                  |q $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655276056755) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1655802704077) (:by |rJG4IHzWf) (:text |-100)
                                  |s $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |70)
                                  |t $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |30)
                                  |u $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:radius)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:radius)
                                                  |l $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |value)
                          |s $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |comp-slider)
                              |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655297864148) (:by |rJG4IHzWf) (:text |:regress)
                              |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1655297867310) (:by |rJG4IHzWf) (:text "|\"regress")
                                  |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |0.01)
                                  |l $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1655298558412) (:by |rJG4IHzWf) (:text |0.2)
                                  |o $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1655297882669) (:by |rJG4IHzWf) (:text |2)
                                  |q $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655276056755) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1655802706711) (:by |rJG4IHzWf) (:text |-40)
                                  |s $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655298347957) (:by |rJG4IHzWf) (:text |40)
                                  |t $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655298294003) (:by |rJG4IHzWf) (:text |60)
                                          |l $ %{} :Leaf (:at 1655298312058) (:by |rJG4IHzWf) (:text |90)
                                  |u $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655297886323) (:by |rJG4IHzWf) (:text |:regress)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655297888757) (:by |rJG4IHzWf) (:text |:regress)
                                                  |l $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |value)
                          |t $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655740815504) (:by |rJG4IHzWf) (:text |comp-slider)
                              |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655740818287) (:by |rJG4IHzWf) (:text |:move-x)
                              |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1655740820301) (:by |rJG4IHzWf) (:text "|\"move-x")
                                  |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655741068520) (:by |rJG4IHzWf) (:text |1)
                                  |q $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1655276056755) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1655802709271) (:by |rJG4IHzWf) (:text |20)
                                  |s $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655298337475) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655298337475) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655298337475) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1655298337475) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655298351258) (:by |rJG4IHzWf) (:text |40)
                                  |t $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655298328171) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655298328171) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655298328171) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655298328171) (:by |rJG4IHzWf) (:text |60)
                                          |l $ %{} :Leaf (:at 1655298328171) (:by |rJG4IHzWf) (:text |90)
                                  |u $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655740829063) (:by |rJG4IHzWf) (:text |:move-x)
                                          |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655276001292) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655740831426) (:by |rJG4IHzWf) (:text |:move-x)
                                                  |l $ %{} :Leaf (:at 1655276001292) (:by |rJG4IHzWf) (:text |value)
                          |tT $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |comp-slider-point)
                              |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1657690258067) (:by |rJG4IHzWf) (:text |:skip)
                              |h $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text "|\"toss")
                                  |h $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |0.001)
                                  |l $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1657690263177) (:by |rJG4IHzWf) (:text |-0.2)
                                  |o $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1657690269407) (:by |rJG4IHzWf) (:text |0.2)
                                  |q $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |[])
                                          |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |80)
                                  |s $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |40)
                                  |t $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |60)
                                          |l $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |90)
                                  |u $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657690275724) (:by |rJG4IHzWf) (:text |:skip)
                                          |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1657690231816) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1657690277911) (:by |rJG4IHzWf) (:text |:skip)
                                                  |l $ %{} :Leaf (:at 1657690231816) (:by |rJG4IHzWf) (:text |value)
                          |u $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |comp-spin-slider)
                              |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655312132379) (:by |rJG4IHzWf) (:text |:spin)
                              |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |{})
                                  |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655312424486) (:by |rJG4IHzWf) (:text |1)
                                  |l $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1655312389350) (:by |rJG4IHzWf) (:text |0)
                                  |o $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1655312392787) (:by |rJG4IHzWf) (:text |nil)
                                  |p $ %{} :Expr (:at 1655312145654) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312145654) (:by |rJG4IHzWf) (:text |:fraction)
                                      |b $ %{} :Leaf (:at 1655312145654) (:by |rJG4IHzWf) (:text |1)
                                  |pT $ %{} :Expr (:at 1655802425594) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655802425594) (:by |rJG4IHzWf) (:text |:label)
                                      |b $ %{} :Leaf (:at 1655802454679) (:by |rJG4IHzWf) (:text "|\"Texture spin")
                                  |q $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655312164588) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312170685) (:by |rJG4IHzWf) (:text |:spin-position)
                                          |b $ %{} :Leaf (:at 1655312171401) (:by |rJG4IHzWf) (:text |state)
                                  |s $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655802397382) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |50)
                                          |h $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |70)
                                  |t $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655802404289) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |30)
                                  |tT $ %{} :Expr (:at 1655312142958) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312142958) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655312142958) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312142958) (:by |rJG4IHzWf) (:text |:spin)
                                          |b $ %{} :Leaf (:at 1655312142958) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655312151906) (:by |rJG4IHzWf) (:text |:spin)
                                                  |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |value)
                                  |w $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:on-move)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |pos)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655312176523) (:by |rJG4IHzWf) (:text |:spin-position)
                                                  |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |pos)
                          |uT $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |comp-spin-slider)
                              |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655741794888) (:by |rJG4IHzWf) (:text |:shape-spin)
                              |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |{})
                                  |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655742119392) (:by |rJG4IHzWf) (:text |0.5)
                                  |l $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:min)
                                      |b $ %{} :Leaf (:at 1655312389350) (:by |rJG4IHzWf) (:text |0)
                                  |o $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:max)
                                      |b $ %{} :Leaf (:at 1655312392787) (:by |rJG4IHzWf) (:text |nil)
                                  |p $ %{} :Expr (:at 1655312145654) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312145654) (:by |rJG4IHzWf) (:text |:fraction)
                                      |b $ %{} :Leaf (:at 1655312145654) (:by |rJG4IHzWf) (:text |1)
                                  |pT $ %{} :Expr (:at 1655802412708) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655802417795) (:by |rJG4IHzWf) (:text |:label)
                                      |b $ %{} :Leaf (:at 1655802421677) (:by |rJG4IHzWf) (:text "|\"Shape spin")
                                  |q $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Expr (:at 1655312164588) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655741818669) (:by |rJG4IHzWf) (:text |:shape-spin-position)
                                          |b $ %{} :Leaf (:at 1655312171401) (:by |rJG4IHzWf) (:text |state)
                                  |s $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655802398974) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655741860281) (:by |rJG4IHzWf) (:text |250)
                                          |h $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655741865218) (:by |rJG4IHzWf) (:text |80)
                                  |t $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655802402594) (:by |rJG4IHzWf) (:text |;)
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:color)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |200)
                                          |h $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |30)
                                  |tT $ %{} :Expr (:at 1655312142958) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312142958) (:by |rJG4IHzWf) (:text |:value)
                                      |b $ %{} :Expr (:at 1655312142958) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655741825519) (:by |rJG4IHzWf) (:text |:shape-spin)
                                          |b $ %{} :Leaf (:at 1655312142958) (:by |rJG4IHzWf) (:text |state)
                                  |v $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |value)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655741823907) (:by |rJG4IHzWf) (:text |:shape-spin)
                                                  |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |value)
                                  |w $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |:on-move)
                                      |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |pos)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655312127788) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655741828608) (:by |rJG4IHzWf) (:text |:shape-spin-position)
                                                  |l $ %{} :Leaf (:at 1655312127788) (:by |rJG4IHzWf) (:text |pos)
                                  |x $ %{} :Expr (:at 1655802409708) (:by |rJG4IHzWf)
                                    :data $ {}
                          |v $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |comp-drag-point)
                              |b $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |>>)
                                  |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |states)
                                  |h $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:p3)
                              |h $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:position)
                                      |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |shift)
                                  |h $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:unit)
                                      |b $ %{} :Leaf (:at 1655742099992) (:by |rJG4IHzWf) (:text |0.5)
                                  |l $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:radius)
                                      |b $ %{} :Leaf (:at 1655742411281) (:by |rJG4IHzWf) (:text |12)
                                  |o $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:fill)
                                      |b $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |30)
                                          |h $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |80)
                                  |q $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |;)
                                      |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:color)
                                      |h $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |hslx)
                                          |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |90)
                                          |l $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |100)
                                  |s $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:alpha)
                                      |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |1)
                                  |t $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:hide-text?)
                                      |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |true)
                                  |u $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |position)
                                              |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |cursor)
                                              |h $ %{} :Expr (:at 1655740922652) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |assoc)
                                                  |b $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |state)
                                                  |h $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |:shift)
                                                  |l $ %{} :Leaf (:at 1655740922652) (:by |rJG4IHzWf) (:text |position)
        |file-image $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655103976181) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655103976181) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1655105088586) (:by |rJG4IHzWf) (:text |file-image)
              |h $ %{} :Expr (:at 1655754384282) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655754384282) (:by |rJG4IHzWf) (:text |new)
                  |b $ %{} :Leaf (:at 1655754384282) (:by |rJG4IHzWf) (:text |js/Image)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1651509227822) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1651509227822) (:by |rJG4IHzWf) (:text |ns)
            |b $ %{} :Leaf (:at 1651509227822) (:by |rJG4IHzWf) (:text |app.comp.kaleidoscope)
            |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:require)
                |b $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |phlox.core)
                    |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |g)
                        |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |hslx)
                        |h $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |rect)
                        |l $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |circle)
                        |o $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |text)
                        |q $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |container)
                        |s $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |graphics)
                        |t $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |create-list)
                        |u $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |>>)
                        |v $ %{} :Leaf (:at 1651509475924) (:by |rJG4IHzWf) (:text |mesh)
                        |w $ %{} :Leaf (:at 1655069287914) (:by |rJG4IHzWf) (:text |group)
                |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |phlox.comp.button)
                    |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |comp-button)
                |l $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |phlox.comp.drag-point)
                    |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |comp-drag-point)
                |m $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655069555076) (:by |rJG4IHzWf) (:text |phlox.comp.slider)
                    |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655069556863) (:by |rJG4IHzWf) (:text |comp-slider)
                        |b $ %{} :Leaf (:at 1655312183285) (:by |rJG4IHzWf) (:text |comp-spin-slider)
                        |h $ %{} :Leaf (:at 1655740651543) (:by |rJG4IHzWf) (:text |comp-slider-point)
                |o $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |ui)
                |q $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |memof.alias)
                    |b $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651509260728) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651509260728) (:by |rJG4IHzWf) (:text |memof-call)
                |s $ %{} :Expr (:at 1651608138390) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651608138390) (:by |rJG4IHzWf) (:text |app.config)
                    |b $ %{} :Leaf (:at 1651608138390) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1651608138390) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651608138390) (:by |rJG4IHzWf) (:text |inline-shader)
                |t $ %{} :Expr (:at 1655068558531) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655068562504) (:by |rJG4IHzWf) (:text "|\"pixi.js")
                    |b $ %{} :Leaf (:at 1655068683389) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1655068585984) (:by |rJG4IHzWf) (:text |PIXI)
                |u $ %{} :Expr (:at 1655740418062) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655740421979) (:by |rJG4IHzWf) (:text |app.store)
                    |b $ %{} :Leaf (:at 1655740422976) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655740423253) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655740425479) (:by |rJG4IHzWf) (:text |dispatch!)
    |app.comp.navbar $ %{} :FileEntry
      :defs $ {}
        |comp-help-menu $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655754622219) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655754624513) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1655754622219) (:by |rJG4IHzWf) (:text |comp-help-menu)
              |h $ %{} :Expr (:at 1655754622219) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1655754625935) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655754626878) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1655754627126) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655754627500) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1655754627726) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655754628668) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Leaf (:at 1655784533905) (:by |rJG4IHzWf) (:text |style-menu)
                  |h $ %{} :Expr (:at 1655785018955) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1655785019826) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1655785020075) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655785021364) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655785030962) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655785032453) (:by |rJG4IHzWf) (:text |:style)
                              |b $ %{} :Expr (:at 1655785032802) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655785033150) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655785033936) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655785033936) (:by |rJG4IHzWf) (:text |:overflow)
                                      |b $ %{} :Leaf (:at 1655785033936) (:by |rJG4IHzWf) (:text |:auto)
                                  |h $ %{} :Expr (:at 1655785051965) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655785053260) (:by |rJG4IHzWf) (:text |:height)
                                      |b $ %{} :Leaf (:at 1655785054914) (:by |rJG4IHzWf) (:text "|\"100%")
                                  |l $ %{} :Expr (:at 1655785069991) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655785069991) (:by |rJG4IHzWf) (:text |:padding)
                                      |b $ %{} :Leaf (:at 1655785069991) (:by |rJG4IHzWf) (:text |16)
                      |T $ %{} :Expr (:at 1655754805837) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655754904972) (:by |rJG4IHzWf) (:text |comp-md-block)
                          |X $ %{} :Expr (:at 1655754876043) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655754881435) (:by |rJG4IHzWf) (:text |inline-file)
                              |b $ %{} :Leaf (:at 1655754884254) (:by |rJG4IHzWf) (:text "|\"README.md")
                          |b $ %{} :Expr (:at 1655754872981) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655754872733) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1655785024031) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655785024031) (:by |rJG4IHzWf) (:text |=<)
                          |b $ %{} :Leaf (:at 1655785024031) (:by |rJG4IHzWf) (:text |nil)
                          |h $ %{} :Leaf (:at 1655785024031) (:by |rJG4IHzWf) (:text |120)
                  |o $ %{} :Expr (:at 1655784520297) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655784525270) (:by |rJG4IHzWf) (:text |span)
                      |b $ %{} :Expr (:at 1655784525605) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784525973) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655784526335) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784713866) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1655784718485) (:by |rJG4IHzWf) (:text |style-close)
                          |h $ %{} :Expr (:at 1655784560424) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784562578) (:by |rJG4IHzWf) (:text |:inner-text)
                              |b $ %{} :Leaf (:at 1655784676529) (:by |rJG4IHzWf) (:text "|\"✕")
                          |l $ %{} :Expr (:at 1655784777060) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784781240) (:by |rJG4IHzWf) (:text |:on-click)
                              |b $ %{} :Expr (:at 1655784781581) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655784782580) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1655784782839) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655784783070) (:by |rJG4IHzWf) (:text |e)
                                      |b $ %{} :Leaf (:at 1655784784566) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Expr (:at 1655784787168) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655784790165) (:by |rJG4IHzWf) (:text |d!)
                                      |b $ %{} :Leaf (:at 1655784805097) (:by |rJG4IHzWf) (:text |:toggle-help)
                                      |h $ %{} :Leaf (:at 1655784798166) (:by |rJG4IHzWf) (:text |nil)
        |comp-navbar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655753798437) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655753810746) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1655753798437) (:by |rJG4IHzWf) (:text |comp-navbar)
              |h $ %{} :Expr (:at 1655753798437) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655753851503) (:by |rJG4IHzWf) (:text |store)
              |l $ %{} :Expr (:at 1655753800821) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655753801343) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1655753801605) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655753801966) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1655753940342) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655753942536) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Leaf (:at 1655784448541) (:by |rJG4IHzWf) (:text |style-navbar)
                  |l $ %{} :Expr (:at 1655754087603) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655754088583) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1655754088865) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655754089194) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655803516032) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655803517818) (:by |rJG4IHzWf) (:text |:style)
                              |b $ %{} :Leaf (:at 1655803523331) (:by |rJG4IHzWf) (:text |ui/column)
                      |e $ %{} :Expr (:at 1655803527031) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1655803528859) (:by |rJG4IHzWf) (:text |div)
                          |L $ %{} :Expr (:at 1655803529072) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655803529394) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1655754529787) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1655754532038) (:by |rJG4IHzWf) (:text |button)
                              |T $ %{} :Expr (:at 1655754467267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655754537605) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655754538071) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1655754540812) (:by |rJG4IHzWf) (:text |:inner-text)
                                      |T $ %{} :Leaf (:at 1655754467267) (:by |rJG4IHzWf) (:text "|\"Usages(用法)")
                                  |h $ %{} :Expr (:at 1655754541145) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655754543374) (:by |rJG4IHzWf) (:text |:style)
                                      |b $ %{} :Leaf (:at 1655754556167) (:by |rJG4IHzWf) (:text |ui/button)
                                  |l $ %{} :Expr (:at 1655754560835) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655754562760) (:by |rJG4IHzWf) (:text |:on-click)
                                      |b $ %{} :Expr (:at 1655754563430) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655754563820) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655754564163) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655754564397) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1655754566249) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655754566894) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655754569133) (:by |rJG4IHzWf) (:text |d!)
                                              |b $ %{} :Leaf (:at 1655754571800) (:by |rJG4IHzWf) (:text |:toggle-help)
                                              |h $ %{} :Leaf (:at 1655754573187) (:by |rJG4IHzWf) (:text |nil)
                      |f $ %{} :Expr (:at 1655803530839) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655803531360) (:by |rJG4IHzWf) (:text |=<)
                          |b $ %{} :Leaf (:at 1655803532465) (:by |rJG4IHzWf) (:text |nil)
                          |h $ %{} :Leaf (:at 1655803534554) (:by |rJG4IHzWf) (:text |6)
                      |h $ %{} :Expr (:at 1655803457620) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1655803458354) (:by |rJG4IHzWf) (:text |div)
                          |L $ %{} :Expr (:at 1655803458701) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655803459012) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1655754089622) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655754091101) (:by |rJG4IHzWf) (:text |input)
                              |b $ %{} :Expr (:at 1655754091669) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655754091959) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1655754107325) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655754108747) (:by |rJG4IHzWf) (:text |:type)
                                      |b $ %{} :Leaf (:at 1655754343277) (:by |rJG4IHzWf) (:text "|\"file")
                                  |h $ %{} :Expr (:at 1655754110161) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655754111917) (:by |rJG4IHzWf) (:text |:accept)
                                      |b $ %{} :Leaf (:at 1655754113053) (:by |rJG4IHzWf) (:text "|\"image/apng, image/avif, image/gif, image/jpeg, image/png, image/svg+xml, image/webp")
                                  |l $ %{} :Expr (:at 1655754114502) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655754116134) (:by |rJG4IHzWf) (:text |:on-change)
                                      |b $ %{} :Expr (:at 1655754116503) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1655754118376) (:by |rJG4IHzWf) (:text |fn)
                                          |b $ %{} :Expr (:at 1655754119342) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655754119569) (:by |rJG4IHzWf) (:text |e)
                                              |b $ %{} :Leaf (:at 1655754120103) (:by |rJG4IHzWf) (:text |d!)
                                          |h $ %{} :Expr (:at 1655754123048) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1655754124123) (:by |rJG4IHzWf) (:text |let)
                                              |b $ %{} :Expr (:at 1655754124398) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1655754124514) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655754125205) (:by |rJG4IHzWf) (:text |event)
                                                      |b $ %{} :Expr (:at 1655754126001) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754126676) (:by |rJG4IHzWf) (:text |:event)
                                                          |b $ %{} :Leaf (:at 1655754126870) (:by |rJG4IHzWf) (:text |e)
                                              |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |let)
                                                  |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |file)
                                                          |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |->)
                                                              |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |event)
                                                              |h $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-target)
                                                              |l $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-files)
                                                              |o $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-0)
                                                      |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |reader)
                                                          |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |new)
                                                              |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |js/FileReader)
                                                  |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |set!)
                                                      |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-onload)
                                                          |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |reader)
                                                      |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |fn)
                                                          |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |e)
                                                          |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |set!)
                                                              |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-src)
                                                                  |b $ %{} :Leaf (:at 1655754288003) (:by |rJG4IHzWf) (:text |file-image)
                                                              |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |->)
                                                                  |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |e)
                                                                  |h $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-target)
                                                                  |l $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-result)
                                                          |l $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |flipped)
                                                              |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |js/setTimeout)
                                                              |h $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |100)
                                                              |l $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |fn)
                                                                  |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                  |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1655754160373) (:by |rJG4IHzWf) (:text |d!)
                                                                      |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |:touch)
                                                                      |h $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |nil)
                                                  |l $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |set!)
                                                      |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.-onerror)
                                                          |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |reader)
                                                      |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |fn)
                                                          |b $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |e)
                                                          |h $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |js/console.error)
                                                              |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text "|\"Failed to load image")
                                                              |h $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |e)
                                                  |o $ %{} :Expr (:at 1655754150608) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |.!readAsDataURL)
                                                      |b $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |reader)
                                                      |h $ %{} :Leaf (:at 1655754150608) (:by |rJG4IHzWf) (:text |file)
                      |l $ %{} :Expr (:at 1655754603617) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655754604050) (:by |rJG4IHzWf) (:text |if)
                          |b $ %{} :Expr (:at 1655754604328) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655754607964) (:by |rJG4IHzWf) (:text |:show-help?)
                              |b $ %{} :Leaf (:at 1655754609101) (:by |rJG4IHzWf) (:text |store)
                          |h $ %{} :Expr (:at 1655754616080) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655754621449) (:by |rJG4IHzWf) (:text |comp-help-menu)
        |inline-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655754884916) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655754998548) (:by |rJG4IHzWf) (:text |defmacro)
              |b $ %{} :Leaf (:at 1655754884916) (:by |rJG4IHzWf) (:text |inline-file)
              |h $ %{} :Expr (:at 1655754884916) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655754887550) (:by |rJG4IHzWf) (:text |path)
              |l $ %{} :Expr (:at 1655754888157) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655754889466) (:by |rJG4IHzWf) (:text |read-file)
                  |b $ %{} :Leaf (:at 1655754890133) (:by |rJG4IHzWf) (:text |path)
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655784718858) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655784720322) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1655784718858) (:by |rJG4IHzWf) (:text |style-close)
              |h $ %{} :Expr (:at 1655784718858) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655784732725) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1655784733089) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655784736117) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:absolute)
                          |h $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:top)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |16)
                          |l $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |16)
                          |o $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:red)
                          |q $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |20)
                          |s $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |100)
                          |t $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text "|\"20px")
                          |u $ %{} :Expr (:at 1655784736620) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1655784736620) (:by |rJG4IHzWf) (:text |:pointer)
                          |v $ %{} :Expr (:at 1655784870020) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784881499) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1655784888369) (:by |rJG4IHzWf) (:text |0.6)
                          |w $ %{} :Expr (:at 1655784893356) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784897640) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1655784900616) (:by |rJG4IHzWf) (:text "|\"200ms")
                  |h $ %{} :Expr (:at 1655784738137) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655784848320) (:by |rJG4IHzWf) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1655784744747) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784746134) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655784747199) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784883614) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1655784867957) (:by |rJG4IHzWf) (:text |1)
                  |l $ %{} :Expr (:at 1655784738137) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655784940779) (:by |rJG4IHzWf) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1655784744747) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784746134) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1655784747199) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655784943399) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1655784953621) (:by |rJG4IHzWf) (:text "|\"scale(1.2)")
        |style-menu $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655784534854) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655784534854) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1655784534854) (:by |rJG4IHzWf) (:text |style-menu)
              |h $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:position)
                      |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:fixed)
                  |h $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:bottom)
                      |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |40)
                  |l $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:border-radius)
                      |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text "|\"4px")
                  |o $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:right)
                      |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |8)
                  |s $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:width)
                      |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text "|\"60vw")
                  |t $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:height)
                      |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text "|\"70%")
                  |u $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |:background)
                      |b $ %{} :Expr (:at 1655785065238) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |hsl)
                          |b $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |0)
                          |h $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |0)
                          |l $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |100)
                          |o $ %{} :Leaf (:at 1655785065238) (:by |rJG4IHzWf) (:text |0.94)
        |style-navbar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655784448946) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655784448946) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1655784448946) (:by |rJG4IHzWf) (:text |style-navbar)
              |h $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |merge)
                  |b $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |ui/global)
                  |h $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |:position)
                          |b $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |:absolute)
                      |h $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |:bottom)
                          |b $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |0)
                      |l $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |:right)
                          |b $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |0)
                      |q $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |:border-radius)
                          |b $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text "|\"4px")
                      |s $ %{} :Expr (:at 1655784450263) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655784450263) (:by |rJG4IHzWf) (:text |:padding)
                          |b $ %{} :Leaf (:at 1655803506824) (:by |rJG4IHzWf) (:text "|\"8px 8px")
                      |t $ %{} :Expr (:at 1655803478157) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655803480525) (:by |rJG4IHzWf) (:text |:max-width)
                          |b $ %{} :Leaf (:at 1655803501525) (:by |rJG4IHzWf) (:text |240)
                      |u $ %{} :Expr (:at 1655803489673) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655803489673) (:by |rJG4IHzWf) (:text |:background-color)
                          |b $ %{} :Expr (:at 1655803489673) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655803489673) (:by |rJG4IHzWf) (:text |hsl)
                              |b $ %{} :Leaf (:at 1655803489673) (:by |rJG4IHzWf) (:text |0)
                              |h $ %{} :Leaf (:at 1655803489673) (:by |rJG4IHzWf) (:text |0)
                              |l $ %{} :Leaf (:at 1655803489673) (:by |rJG4IHzWf) (:text |100)
                              |o $ %{} :Leaf (:at 1655803489673) (:by |rJG4IHzWf) (:text |0.6)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1655753791771) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1655753791771) (:by |rJG4IHzWf) (:text |ns)
            |b $ %{} :Leaf (:at 1655753791771) (:by |rJG4IHzWf) (:text |app.comp.navbar)
            |h $ %{} :Expr (:at 1655753812603) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1655753813962) (:by |rJG4IHzWf) (:text |:require)
                |b $ %{} :Expr (:at 1655753814830) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655753818066) (:by |rJG4IHzWf) (:text |respo.core)
                    |b $ %{} :Leaf (:at 1655753820272) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655753820523) (:by |rJG4IHzWf)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1655753862250) (:by |rJG4IHzWf) (:text |defcomp)
                        |T $ %{} :Leaf (:at 1655753820943) (:by |rJG4IHzWf) (:text |div)
                        |b $ %{} :Leaf (:at 1655753824274) (:by |rJG4IHzWf) (:text |<>)
                        |h $ %{} :Leaf (:at 1655754094960) (:by |rJG4IHzWf) (:text |input)
                        |j $ %{} :Leaf (:at 1655754534984) (:by |rJG4IHzWf) (:text |button)
                        |l $ %{} :Leaf (:at 1655754166190) (:by |rJG4IHzWf) (:text |img)
                        |o $ %{} :Leaf (:at 1655784590994) (:by |rJG4IHzWf) (:text |span)
                |h $ %{} :Expr (:at 1655754266454) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655754278353) (:by |rJG4IHzWf) (:text |app.comp.kaleidoscope)
                    |b $ %{} :Leaf (:at 1655754281149) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655754281390) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655754283418) (:by |rJG4IHzWf) (:text |file-image)
                |l $ %{} :Expr (:at 1655754480981) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655754496689) (:by |rJG4IHzWf) (:text |respo.comp.space)
                    |b $ %{} :Leaf (:at 1655754483702) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655754483983) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655754487942) (:by |rJG4IHzWf) (:text |=<)
                |o $ %{} :Expr (:at 1655754547092) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655754549874) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |b $ %{} :Leaf (:at 1655754552338) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1655754552708) (:by |rJG4IHzWf) (:text |ui)
                |p $ %{} :Expr (:at 1655784465097) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655784466901) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |b $ %{} :Leaf (:at 1655784467590) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655784467801) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655784469373) (:by |rJG4IHzWf) (:text |hsl)
                |q $ %{} :Expr (:at 1655754841473) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655754845133) (:by |rJG4IHzWf) (:text |respo-md.comp.md)
                    |b $ %{} :Leaf (:at 1655754848935) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655754849521) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655754849307) (:by |rJG4IHzWf) (:text |comp-md-block)
                |s $ %{} :Expr (:at 1655784723393) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655784724800) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1655784725565) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655784725883) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655784727103) (:by |rJG4IHzWf) (:text |defstyle)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |inline-shader $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651509512180) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1651509517150) (:by |rJG4IHzWf) (:text |defmacro)
              |b $ %{} :Leaf (:at 1651607933861) (:by |rJG4IHzWf) (:text |inline-shader)
              |h $ %{} :Expr (:at 1651509512180) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651509515244) (:by |rJG4IHzWf) (:text |name)
              |l $ %{} :Expr (:at 1651509518326) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651509519760) (:by |rJG4IHzWf) (:text |read-file)
                  |b $ %{} :Expr (:at 1651509520014) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651509520664) (:by |rJG4IHzWf) (:text |str)
                      |b $ %{} :Leaf (:at 1651509525126) (:by |rJG4IHzWf) (:text "|\"shaders/")
                      |h $ %{} :Leaf (:at 1651509526792) (:by |rJG4IHzWf) (:text |name)
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1527526861413) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526864597) (:by |root) (:text |:dev-ui)
                      |x $ %{} :Leaf (:at 1540054307727) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |v $ %{} :Expr (:at 1527526865931) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526868617) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1527526887965) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |w $ %{} :Expr (:at 1528008960614) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528008962775) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1573292416508) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/phlox/")
                  |y $ %{} :Expr (:at 1527868456422) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1573292411084) (:by |rJG4IHzWf) (:text "|\"Phlox")
                  |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1573292425255) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/quamolit.png")
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1573294243713) (:by |rJG4IHzWf) (:text "|\"phlox")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
            |n $ %{} :Expr (:at 1649062761949) (:by |rJG4IHzWf)
              :data $ {}
                |D $ %{} :Leaf (:at 1649062762982) (:by |rJG4IHzWf) (:text |:require)
                |T $ %{} :Expr (:at 1649062761526) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1649062761526) (:by |rJG4IHzWf) (:text "|\"mobile-detect")
                    |b $ %{} :Leaf (:at 1649062761526) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1649062761526) (:by |rJG4IHzWf) (:text |mobile-detect)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1548266583359) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1548266583359) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1548266583359) (:by |rJG4IHzWf) (:text |main!)
              |r $ %{} :Expr (:at 1548266583359) (:by |rJG4IHzWf)
                :data $ {}
              |x $ %{} :Expr (:at 1548267246722) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1573356695965) (:by |rJG4IHzWf) (:text |;)
                  |T $ %{} :Leaf (:at 1548267254997) (:by |rJG4IHzWf) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1548267256875) (:by |rJG4IHzWf) (:text |PIXI)
              |x5 $ %{} :Expr (:at 1629169679580) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629169680159) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Leaf (:at 1629169690355) (:by |rJG4IHzWf) (:text |dev?)
                  |T $ %{} :Expr (:at 1619604279980) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619604280258) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |yD $ %{} :Expr (:at 1583685469966) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1583685471113) (:by |rJG4IHzWf) (:text |->)
                  |T $ %{} :Expr (:at 1583685458471) (:by |rJG4IHzWf)
                    :data $ {}
                      |5 $ %{} :Leaf (:at 1612518371822) (:by |rJG4IHzWf) (:text |new)
                      |D $ %{} :Leaf (:at 1649074551300) (:by |rJG4IHzWf) (:text |FontFaceObserver)
                      |L $ %{} :Leaf (:at 1583685465541) (:by |rJG4IHzWf) (:text "|\"Josefin Sans")
                  |j $ %{} :Expr (:at 1583685473053) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622473394612) (:by |rJG4IHzWf) (:text |.!load)
                  |r $ %{} :Expr (:at 1583685474396) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622473396717) (:by |rJG4IHzWf) (:text |.!then)
                      |j $ %{} :Expr (:at 1583685475787) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583685476122) (:by |rJG4IHzWf) (:text |fn)
                          |j $ %{} :Expr (:at 1583685476351) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612518724131) (:by |rJG4IHzWf) (:text |event)
                          |r $ %{} :Expr (:at 1612598209322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612598212748) (:by |rJG4IHzWf) (:text |render-app!)
                          |t $ %{} :Expr (:at 1655740612917) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1655740612917) (:by |rJG4IHzWf) (:text |flipped)
                              |b $ %{} :Leaf (:at 1655740612917) (:by |rJG4IHzWf) (:text |js/setTimeout)
                              |h $ %{} :Leaf (:at 1655740625739) (:by |rJG4IHzWf) (:text |200)
                              |l $ %{} :Expr (:at 1655740612917) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1655740612917) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1655740612917) (:by |rJG4IHzWf)
                                    :data $ {}
                                  |h $ %{} :Expr (:at 1655740612917) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1655740612917) (:by |rJG4IHzWf) (:text |dispatch!)
                                      |b $ %{} :Expr (:at 1712332994704) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1712332995351) (:by |rJG4IHzWf) (:text |::)
                                          |T $ %{} :Leaf (:at 1655740612917) (:by |rJG4IHzWf) (:text |:touch)
              |yL $ %{} :Expr (:at 1573662742473) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573662744127) (:by |rJG4IHzWf) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1573662745368) (:by |rJG4IHzWf) (:text |*store)
                  |r $ %{} :Leaf (:at 1573662747477) (:by |rJG4IHzWf) (:text |:change)
                  |v $ %{} :Expr (:at 1573662747891) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1573662748179) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1573662748480) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612523240288) (:by |rJG4IHzWf) (:text |store)
                          |j $ %{} :Leaf (:at 1612523241647) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1612598419615) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598461873) (:by |rJG4IHzWf) (:text |render-app!)
              |yP $ %{} :Expr (:at 1654862961927) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1654862963084) (:by |rJG4IHzWf) (:text |when)
                  |L $ %{} :Leaf (:at 1654862969648) (:by |rJG4IHzWf) (:text |mobile?)
                  |T $ %{} :Expr (:at 1649062574418) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1649062574418) (:by |rJG4IHzWf) (:text |render-control!)
                  |b $ %{} :Expr (:at 1655740619543) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655740619543) (:by |rJG4IHzWf) (:text |start-control-loop!)
                      |b $ %{} :Leaf (:at 1655740619543) (:by |rJG4IHzWf) (:text |8)
                      |h $ %{} :Leaf (:at 1655740619543) (:by |rJG4IHzWf) (:text |on-control-event)
              |yT $ %{} :Expr (:at 1573356701317) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573356701317) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1573356701317) (:by |rJG4IHzWf) (:text "|\"App Started")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1655753746608) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1655753746608) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1655753746608) (:by |rJG4IHzWf) (:text |mount-target)
              |h $ %{} :Expr (:at 1655753746608) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655753753875) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |b $ %{} :Leaf (:at 1655753756779) (:by |rJG4IHzWf) (:text "|\".dom-app")
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629390760417) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1629390761154) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1629390762875) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1629390763423) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1629390769213) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629390769642) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1629390769878) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629390771868) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1629390773740) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1548266585003) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629390768014) (:by |rJG4IHzWf) (:text |do)
                      |w $ %{} :Expr (:at 1593275706640) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1593275715294) (:by |rJG4IHzWf) (:text |clear-phlox-caches!)
                      |xj $ %{} :Expr (:at 1612598605762) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598610437) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1612598614898) (:by |rJG4IHzWf) (:text |*store)
                          |r $ %{} :Leaf (:at 1612598623332) (:by |rJG4IHzWf) (:text |:change)
                      |y $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |*store)
                          |r $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |:change)
                          |v $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |store)
                                  |j $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612598450034) (:by |rJG4IHzWf) (:text |render-app!)
                      |yT $ %{} :Expr (:at 1612598631582) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598631582) (:by |rJG4IHzWf) (:text |render-app!)
                      |yb $ %{} :Expr (:at 1654862981167) (:by |rJG4IHzWf)
                        :data $ {}
                          |5 $ %{} :Leaf (:at 1654862983929) (:by |rJG4IHzWf) (:text |when)
                          |D $ %{} :Leaf (:at 1654862981917) (:by |rJG4IHzWf) (:text |mobile?)
                          |T $ %{} :Expr (:at 1649062605991) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1649062605991) (:by |rJG4IHzWf) (:text |replace-control-loop!)
                              |b $ %{} :Leaf (:at 1649062605991) (:by |rJG4IHzWf) (:text |8)
                              |h $ %{} :Leaf (:at 1649062605991) (:by |rJG4IHzWf) (:text |on-control-event)
                      |yj $ %{} :Expr (:at 1629390777796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629390783109) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629390803362) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1629390804302) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1629390805229) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629390808107) (:by |rJG4IHzWf) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629390809537) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1629390812951) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612598213430) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612598215112) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1612598213430) (:by |rJG4IHzWf) (:text |render-app!)
              |r $ %{} :Expr (:at 1612598213430) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1613831657319) (:by |rJG4IHzWf) (:text |?)
                  |j $ %{} :Leaf (:at 1613831657933) (:by |rJG4IHzWf) (:text |arg)
              |t $ %{} :Expr (:at 1655754187637) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1655754187637) (:by |rJG4IHzWf) (:text |respo/render!)
                  |b $ %{} :Leaf (:at 1655754187637) (:by |rJG4IHzWf) (:text |mount-target)
                  |h $ %{} :Expr (:at 1655754187637) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655754187637) (:by |rJG4IHzWf) (:text |comp-navbar)
                      |b $ %{} :Leaf (:at 1655754187637) (:by |rJG4IHzWf) (:text |@*store)
                  |l $ %{} :Leaf (:at 1655754187637) (:by |rJG4IHzWf) (:text |dispatch!)
              |v $ %{} :Expr (:at 1612598216289) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Expr (:at 1612598216289) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |@*store)
                  |r $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |dispatch!)
                  |v $ %{} :Expr (:at 1612598472049) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1629169711960) (:by |rJG4IHzWf) (:text |or)
                      |L $ %{} :Leaf (:at 1613831661153) (:by |rJG4IHzWf) (:text |arg)
                      |T $ %{} :Expr (:at 1612598216289) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1548266580449) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1548266580449) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1548266580449) (:by |rJG4IHzWf) (:text |app.main)
            |r $ %{} :Expr (:at 1548267234269) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1548267234910) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1548267235111) (:by |rJG4IHzWf)
                  :data $ {}
                    |X $ %{} :Leaf (:at 1548267268346) (:by |rJG4IHzWf) (:text "|\"pixi.js")
                    |b $ %{} :Leaf (:at 1548267239536) (:by |rJG4IHzWf) (:text |:as)
                    |j $ %{} :Leaf (:at 1548267236197) (:by |rJG4IHzWf) (:text |PIXI)
                |r $ %{} :Expr (:at 1573356495638) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1573356502361) (:by |rJG4IHzWf) (:text |phlox.core)
                    |r $ %{} :Leaf (:at 1573356503682) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1573356503870) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1573356508921) (:by |rJG4IHzWf) (:text |render!)
                        |r $ %{} :Leaf (:at 1593275719006) (:by |rJG4IHzWf) (:text |clear-phlox-caches!)
                        |t $ %{} :Leaf (:at 1649062657337) (:by |rJG4IHzWf) (:text |update-viewer!)
                        |u $ %{} :Leaf (:at 1649145601535) (:by |rJG4IHzWf) (:text |on-control-event)
                |v $ %{} :Expr (:at 1573356509898) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1622482559187) (:by |rJG4IHzWf) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1573356520731) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1573356520963) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1573356527039) (:by |rJG4IHzWf) (:text |comp-container)
                |x $ %{} :Expr (:at 1573662565143) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1622482350875) (:by |rJG4IHzWf) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1573662571099) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1573662571751) (:by |rJG4IHzWf) (:text |schema)
                |y $ %{} :Expr (:at 1580869162931) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1649145594407) (:by |rJG4IHzWf) (:text |phlox.config)
                    |r $ %{} :Leaf (:at 1580869166624) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1580869166807) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580869168063) (:by |rJG4IHzWf) (:text |dev?)
                        |n $ %{} :Leaf (:at 1649062582689) (:by |rJG4IHzWf) (:text |mobile?)
                |yT $ %{} :Expr (:at 1580869187547) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1643606542981) (:by |rJG4IHzWf) (:text "|\"nanoid")
                    |r $ %{} :Leaf (:at 1643606544523) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1643606547824) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1643606547106) (:by |rJG4IHzWf) (:text |nanoid)
                |yj $ %{} :Expr (:at 1580869200657) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1622482355845) (:by |rJG4IHzWf) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1580869206447) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1580869206643) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580869207738) (:by |rJG4IHzWf) (:text |updater)
                |yr $ %{} :Expr (:at 1583685438044) (:by |rJG4IHzWf)
                  :data $ {}
                    |n $ %{} :Leaf (:at 1612538257268) (:by |rJG4IHzWf) (:text "|\"fontfaceobserver-es")
                    |r $ %{} :Leaf (:at 1649074554488) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1583685444335) (:by |rJG4IHzWf) (:text |FontFaceObserver)
                |yv $ %{} :Expr (:at 1629390819770) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |build-errors)
                |yx $ %{} :Expr (:at 1629390819770) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |hud!)
                |z $ %{} :Expr (:at 1649062671808) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |touch-control.core)
                    |b $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1649062671808) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |render-control!)
                        |b $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |start-control-loop!)
                        |h $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |replace-control-loop!)
                |zD $ %{} :Expr (:at 1655740349381) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655740350734) (:by |rJG4IHzWf) (:text |app.store)
                    |b $ %{} :Leaf (:at 1655740351484) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655740351710) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655740353151) (:by |rJG4IHzWf) (:text |*store)
                        |b $ %{} :Leaf (:at 1655740356532) (:by |rJG4IHzWf) (:text |dispatch!)
                |zP $ %{} :Expr (:at 1655753729759) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655753730915) (:by |rJG4IHzWf) (:text |respo.core)
                    |b $ %{} :Leaf (:at 1655753731402) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1655753732640) (:by |rJG4IHzWf) (:text |respo)
                |zY $ %{} :Expr (:at 1655753836782) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655753839356) (:by |rJG4IHzWf) (:text |app.comp.navbar)
                    |b $ %{} :Leaf (:at 1655753840217) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655753840636) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655753840913) (:by |rJG4IHzWf) (:text |comp-navbar)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |yT $ %{} :Expr (:at 1583036803879) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036804777) (:by |rJG4IHzWf) (:text |:states)
                      |j $ %{} :Expr (:at 1583036805113) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036806368) (:by |rJG4IHzWf) (:text |{})
                  |yj $ %{} :Expr (:at 1584639518204) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1584639519390) (:by |rJG4IHzWf) (:text |:cursor)
                      |j $ %{} :Expr (:at 1584639519989) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584639519838) (:by |rJG4IHzWf) (:text |[])
                  |z $ %{} :Expr (:at 1655740183465) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655740190544) (:by |rJG4IHzWf) (:text |:n)
                      |b $ %{} :Leaf (:at 1655740191415) (:by |rJG4IHzWf) (:text |0)
                  |zD $ %{} :Expr (:at 1655754577876) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1655754580363) (:by |rJG4IHzWf) (:text |:show-help?)
                      |b $ %{} :Leaf (:at 1655754581004) (:by |rJG4IHzWf) (:text |false)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.store $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1573662553239) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612518324467) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1655740324118) (:by |rJG4IHzWf) (:text |*store)
              |r $ %{} :Leaf (:at 1573662562450) (:by |rJG4IHzWf) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1573662594481) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1573662594481) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1655740331834) (:by |rJG4IHzWf) (:text |dispatch!)
              |r $ %{} :Expr (:at 1573662594481) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573662598886) (:by |rJG4IHzWf) (:text |op)
              |x $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |when)
                  |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |and)
                      |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |dev?)
                      |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1712332943095) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1712332943979) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1712332944667) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |:states)
                  |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |println)
                      |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text "|\"dispatch!")
                      |r $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op)
              |y $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |let)
                  |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-id)
                          |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1643606538079) (:by |rJG4IHzWf) (:text |nanoid)
                      |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-time)
                          |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1622476150108) (:by |rJG4IHzWf) (:text |js/Date.now)
                  |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |reset!)
                      |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |*store)
                      |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |updater)
                          |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |@*store)
                          |r $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op)
                          |x $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-id)
                          |y $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-time)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1655740316629) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1655740316629) (:by |rJG4IHzWf) (:text |ns)
            |b $ %{} :Leaf (:at 1655740316629) (:by |rJG4IHzWf) (:text |app.store)
            |h $ %{} :Expr (:at 1655740336773) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1655740337500) (:by |rJG4IHzWf) (:text |:require)
                |b $ %{} :Expr (:at 1655740338070) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655740340921) (:by |rJG4IHzWf) (:text |app.updater)
                    |b $ %{} :Leaf (:at 1655740341546) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655740341741) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655740342546) (:by |rJG4IHzWf) (:text |updater)
                |h $ %{} :Expr (:at 1655740364145) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655740366937) (:by |rJG4IHzWf) (:text |app.schema)
                    |b $ %{} :Leaf (:at 1655740369587) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1655740371008) (:by |rJG4IHzWf) (:text |schema)
                |l $ %{} :Expr (:at 1655740401380) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655740401380) (:by |rJG4IHzWf) (:text |phlox.config)
                    |b $ %{} :Leaf (:at 1655740401380) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655740401380) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655740401380) (:by |rJG4IHzWf) (:text |dev?)
                        |b $ %{} :Leaf (:at 1655740401380) (:by |rJG4IHzWf) (:text |mobile?)
                |o $ %{} :Expr (:at 1655740413119) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1655740413119) (:by |rJG4IHzWf) (:text "|\"nanoid")
                    |b $ %{} :Leaf (:at 1655740413119) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1655740413119) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1655740413119) (:by |rJG4IHzWf) (:text |nanoid)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1712332956243) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |op)
                  |v $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1712332963031) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655740196447) (:by |rJG4IHzWf) (:text |:touch)
                      |j $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655740198962) (:by |rJG4IHzWf) (:text |update)
                          |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1655740201273) (:by |rJG4IHzWf) (:text |:n)
                          |v $ %{} :Leaf (:at 1655740203175) (:by |rJG4IHzWf) (:text |inc)
                  |vr $ %{} :Expr (:at 1583036795773) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1712332965738) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036795773) (:by |rJG4IHzWf) (:text |:states)
                          |b $ %{} :Leaf (:at 1712332967856) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1712332968078) (:by |rJG4IHzWf) (:text |s)
                      |b $ %{} :Expr (:at 1585489364274) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1585489365071) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1585489370372) (:by |rJG4IHzWf) (:text |store)
                          |o $ %{} :Leaf (:at 1712332972469) (:by |rJG4IHzWf) (:text |cursor)
                          |q $ %{} :Leaf (:at 1712332973047) (:by |rJG4IHzWf) (:text |s)
                  |vv $ %{} :Expr (:at 1655754585668) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1712332974894) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655754588747) (:by |rJG4IHzWf) (:text |:toggle-help)
                      |b $ %{} :Expr (:at 1655754590508) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1655754591394) (:by |rJG4IHzWf) (:text |update)
                          |b $ %{} :Leaf (:at 1655754592301) (:by |rJG4IHzWf) (:text |store)
                          |h $ %{} :Leaf (:at 1655754594389) (:by |rJG4IHzWf) (:text |:show-help?)
                          |l $ %{} :Leaf (:at 1655754596473) (:by |rJG4IHzWf) (:text |not)
                  |w $ %{} :Expr (:at 1580869104875) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1712332975813) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580869104875) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1712332978261) (:by |rJG4IHzWf) (:text |op-data)
                      |j $ %{} :Leaf (:at 1580869104875) (:by |rJG4IHzWf) (:text |op-data)
                  |x $ %{} :Expr (:at 1712332980299) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1712332980899) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1712332961063) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1712332961063) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1712332961063) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1712332982715) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1712332961063) (:by |rJG4IHzWf) (:text "|\"unknown op")
                              |h $ %{} :Leaf (:at 1712332961063) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1712332961063) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1585489354778) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1585489355581) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1585489357121) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |[])
                    |j $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |phlox.cursor)
                    |r $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1585489357121) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |[])
                        |j $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
