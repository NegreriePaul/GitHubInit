<section id="page_festivals" class="events artists list_all_articles">
    <div class="page_article">
        <h1>Les Articles</h1>
        <?php if (!empty($subtitle)) { ?>
            <p class="seacrh_subtitle"><?php echo $subtitle; ?></p>
        <?php } ?>
        <div class="list_artists">
            <section class="events">

                <div class="content">
                    <div class="redacteurs">
                        <p onclick="afficheArticle(22)"><img id="gurnav" src="<?php echo $home_url; ?>/images/membres/gurnav.png" alt="gurnavdeep"> <span>Gurnavdeep</span></p>
                        <p onclick="afficheArticle(74)"><img id="thomas" src="<?php echo $home_url; ?>/images/membres/thomas.png" alt="thomas"> <span>Thomas</span></p>
                        <p onclick="afficheArticle(72)"><img id="paul" src="<?php echo $home_url; ?>/images/membres/paul.png" alt="paul"> <span>Paul</span></p>

                    <?php foreach ($articles as $key => $value) { ?>
                        <div class="<?php echo $value["id"]; ?> article_entier">
                            <div class="closePopin">
                                <img src="<?php echo $home_url; ?>/images/common/close.png" alt="Fermer">
                            </div>
                            <?php if (!empty($value['photo'])) { ?>
                                <span class="image_article">
                                    <img class="thumbnail" src="<?php echo FRONT_URL . $value['photo']; ?>" alt="<?php echo (isset($alt)) ? $alt : ''; ?>">
                                </span>
                            <?php } ?>
                            <h2><?php echo $value['titre_article']; ?><br>
                                <span id="date_publication">Publié le <?php echo date("d/m/Y", strtotime($value['date_parution'])); ?> - par <?php echo $value['prenom'] ?></span>
                            </h2>
                            <hr>
                            <div class="text">
                                <p class="paragraphe_article"><?php echo nl2br($value['contenu']); ?></p>
                            </div>
                            <?php if (!empty($_SESSION)) {
                                ?>
                                <div class="commenter">
                                    <input type="button" value="Commenter cet article" post-id="<?php echo $key; ?>" name="clickcomment" class="inputComment clickcomment" id="comment">
                                </div>
                                <p class="afficheCom" post-id="<?php echo $key; ?>">Afficher les commentaires</p>
                                <p class="cacherCom" post-id="<?php echo $key; ?>">Cacher les commentaires</p>

                                <div class="lescomms" post-id="<?php echo $key; ?>">
                                    <div class="formCommentaire">
                                        <form class="commentairesForm" method="post" action="">
                                            <input type="hidden" name="id_article" value="<?php echo $value['id']; ?>">
                                            <textarea id="commentairesText" name="blocCommentaire" placeholder="Commentez cet article"></textarea>
                                            <button class="annuleCommentaire inputComment" name="annuleCommentaire" post-id="<?php echo $key; ?>">Annuler le commentaire</button>
                                            <input type="submit" value="Valider" class="inputComment" id="validCommentaire">
                                        </form>

                                    </div>
                                </div>
                                <?php
                                foreach ($articles as $kk => $vv) {
                                    ?> 
                                    <div class="afficheCommentaire" post-id="<?php echo $kk; ?>">
                                        <?php
                                        foreach ($commentaires as $kkk => $vvv) {
                                            if ($vvv['id_element'] == $vv['0']) {
                                                ?>
                                                <div class="commentaire">
                                                    <h3> <?php echo $vvv['pseudo'] . " le " . date("d/m/Y", strtotime($vvv['date_comment'])) . " : " ?> </h3>
                                                    <p><?php echo $vvv['contenu']; ?></p>
                                                </div>
                                                <?php
                                            }
                                        }
                                        ?>

                                    </div>
                                    <?php
                                }
                            }
                            ?>
                        </div>
                    <?php } ?>
                    <div class="all_articles">
                        <?php
                        foreach ($articles as $kk => $vv) {
                            ?>
                            <div class="article <?php echo $vv['id_redacteur']; ?>" id="<?php echo $vv['id'] ?>">
                                <h2 onclick="afficheArticleEntier('<?php echo $vv["id"] ?>')"><?php echo $vv['titre_article']; ?><br>
                                    <span id="date_publication">Publié le <?php echo date("d/m/Y", strtotime($vv['date_parution'])); ?> - par <?php echo $vv['prenom'] ?></span>
                                </h2>
                                <hr>
                                <div class="text">
                                    <p class="paragraphe_article"><?php echo $vv['contenu']; ?>
                                        <?php if (!empty($vv['photo'])) { ?>
                                            <span class="image_article">
                                                <img class="thumbnail" src="<?php echo FRONT_URL . $vv['photo']; ?>" alt="<?php echo (isset($alt)) ? $alt : ''; ?>">
                                            </span>
                                        <?php } ?>
                                    </p>

                                </div>
                                <?php if (!empty($_SESSION)) {
                                    ?>
                                    <div class="commenter">
                                        <input type="button" value="Commenter cet article" post-id="<?php echo $kk; ?>" name="clickcomment" class="inputComment clickcomment" id="comment">
                                    </div>
                                    <p class="afficheCom" post-id="<?php echo $kk; ?>">Afficher les commentaires</p>
                                    <p class="cacherCom" post-id="<?php echo $kk; ?>">Cacher les commentaires</p>

                                    <div class="lescomms" post-id="<?php echo $kk; ?>">
                                        <div class="formCommentaire">
                                            <form class="commentairesForm" method="post" action="">
                                                <input type="hidden" name="id_article" value="<?php echo $vv['id']; ?>">
                                                <textarea id="commentairesText" name="blocCommentaire" placeholder="Commentez cet article"></textarea>
                                                <button class="annuleCommentaire inputComment" name="annuleCommentaire" post-id="<?php echo $kk; ?>">Annuler le commentaire</button>
                                                <input type="submit" value="Valider" class="inputComment" id="validCommentaire">
                                            </form>

                                        </div>
                                    </div>

                                    <div class="afficheCommentaire" post-id="<?php echo $kk; ?>">
                                        <?php
                                        foreach ($commentaires as $kkk => $vvv) {
                                            if ($vvv['id_element'] == $vv['id']) {
                                                ?>
                                                <div class="commentaire">
                                                    <h3> <?php echo $vvv['pseudo'] . " le " . date("d/m/Y", strtotime($vvv['date_comment'])) . " : " ?> </h3>
                                                    <p><?php echo $vvv['contenu']; ?></p>
                                                </div>
                                                <?php
                                            }
                                        }
                                        ?>

                                    </div>
                                    <?php
                                }
                                ?>
                            </div><br>
                        <?php } ?>
                        <div class="lineclear"></div>
                    </div>
                </div>
            </section>

            <div class="pagination"><span>Page 1 sur 10</span><span class="link prev"></span><span class="link next"></span></div>


            <div class="lineclear"></div>
        </div>
    </div>
</section>
