.class public final Lqx6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Lox6;)Lrx6;
    .locals 7

    const-string v0, "url"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lsy6;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lsy6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/OkHttpClient;I)V

    .line 2
    iget-object v0, v0, Lsy6;->c:Ljava/lang/String;

    .line 3
    invoke-static {p0, v0, p1}, Lqx6;->b(Ljava/lang/String;Ljava/lang/String;Lox6;)Lrx6;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Lox6;)Lrx6;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "url"

    invoke-static {v0, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "html"

    invoke-static {v1, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v3, Lrr7;

    invoke-direct {v3, v0, v1}, Lrr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, v3, Lqr7;->c:Lyr7;

    .line 4
    iget v0, v0, Lyr7;->a:I

    if-lez v0, :cond_1

    .line 5
    iget-object v0, v3, Lqr7;->b:Lorg/jsoup/nodes/Document;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6
    iget-object v1, v3, Lqr7;->c:Lyr7;

    .line 7
    iget v1, v1, Lyr7;->a:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Aborting parsing document; "

    const-string v4, " elements found, but ReadabilityOption.maxElemsToParse is set to "

    invoke-static {v2, v0, v4}, Ljo;->A(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lqr7;->c:Lyr7;

    .line 9
    iget v2, v2, Lyr7;->a:I

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, v3, Lqr7;->a:Ljava/lang/String;

    const-string v1, "uri"

    .line 12
    invoke-static {v0, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, v3, Lqr7;->d:Lhs7;

    iget-object v1, v3, Lqr7;->b:Lorg/jsoup/nodes/Document;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "document"

    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v5, Lhs7;->c:La48;

    const-string v6, "Starting to prepare document"

    invoke-interface {v5, v6}, La48;->d(Ljava/lang/String;)V

    .line 16
    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v5, Lgs7;->e:Lgs7;

    const-string v6, "script"

    invoke-virtual {v0, v1, v6, v5}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    .line 18
    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "noscript"

    .line 19
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    const-string v7, "document.getElementsByTag(\"noscript\")"

    invoke-static {v6, v7}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 21
    invoke-static {v7, v5}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "img"

    .line 23
    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v9

    .line 24
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 25
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v11, "images"

    .line 26
    invoke-static {v9, v11}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jsoup/nodes/Element;

    const-string v12, "src"

    .line 28
    invoke-virtual {v11, v12}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "source"

    .line 29
    invoke-static {v12, v13}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v8

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "img[src="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x5d

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 30
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    .line 32
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->unwrap()Lorg/jsoup/nodes/Node;

    goto :goto_1

    :cond_5
    const-string v8, "removeScripts(\'noscript\')"

    .line 33
    invoke-virtual {v0, v7, v8}, Lis7;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :cond_6
    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "style"

    const/4 v6, 0x0

    .line 35
    invoke-virtual {v0, v1, v5, v6}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    .line 36
    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "form"

    .line 37
    invoke-virtual {v0, v1, v5, v6}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    .line 38
    invoke-virtual {v0, v1}, Lhs7;->f(Lorg/jsoup/nodes/Node;)V

    .line 39
    iget-object v5, v0, Lhs7;->b:Ljs7;

    .line 40
    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "regEx"

    invoke-static {v5, v6}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v6

    const-string v7, "br"

    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    const-string v8, "document.body().select(\"br\")"

    invoke-static {v6, v8}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "p"

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 43
    invoke-virtual {v8}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v10

    .line 44
    invoke-virtual {v0, v10, v5}, Lis7;->c(Lorg/jsoup/nodes/Node;Ljs7;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    if-eqz v10, :cond_8

    .line 45
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 46
    invoke-virtual {v10}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v11

    const-string v12, "replaceBrs"

    .line 47
    invoke-virtual {v0, v10, v12}, Lis7;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v11, v5}, Lis7;->c(Lorg/jsoup/nodes/Node;Ljs7;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    if-eqz v11, :cond_7

    .line 49
    invoke-virtual {v8}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v9

    .line 50
    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 51
    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v8

    :goto_6
    if-eqz v8, :cond_7

    .line 52
    invoke-virtual {v8}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 53
    invoke-virtual {v0, v8, v5}, Lis7;->c(Lorg/jsoup/nodes/Node;Ljs7;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 54
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    .line 55
    :cond_9
    invoke-virtual {v8}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v10

    .line 56
    invoke-virtual {v9, v8}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v8, v10

    goto :goto_6

    :cond_a
    const-string v0, "font"

    const-string v5, "span"

    const-string v6, "parentElement"

    .line 57
    invoke-static {v1, v6}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tagName"

    invoke-static {v0, v6}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "newTagName"

    invoke-static {v5, v6}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    const-string v1, "parentElement.getElementsByTag(tagName)"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 60
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_7

    .line 61
    :cond_b
    iget-object v0, v3, Lqr7;->e:Les7;

    iget-object v1, v3, Lqr7;->b:Lorg/jsoup/nodes/Document;

    .line 62
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lwr7;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lwr7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "^\\s*((twitter)\\s*:\\s*)?(description|title)\\s*$"

    const/4 v7, 0x2

    .line 65
    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v8, "^\\s*og\\s*:\\s*(description|title)\\s*$"

    .line 66
    invoke-static {v8, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "meta"

    .line 67
    invoke-virtual {v1, v8}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    const-string v10, "document.select(\"meta\")"

    invoke-static {v8, v10}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v15, "null cannot be cast to non-null type kotlin.CharSequence"

    const-string v14, "replacement"

    const-string v13, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    const-string v12, "input"

    const-string v11, "nativePattern"

    const-string v2, "Pattern.compile(pattern)"

    move-object/from16 p0, v9

    const-string v9, "pattern"

    move-object/from16 v17, v3

    const-string v3, ""

    if-eqz v10, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/Element;

    move-object/from16 p1, v8

    const-string v8, "name"

    .line 69
    invoke-virtual {v10, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v0

    const-string v0, "property"

    .line 70
    invoke-virtual {v10, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v1

    const-string v1, "author"

    .line 71
    invoke-static {v8, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v20, v4

    const-string v4, "content"

    if-nez v19, :cond_13

    invoke-static {v0, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_d

    .line 72
    :cond_c
    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_9

    .line 73
    :cond_d
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v8, v0

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_12

    .line 74
    invoke-virtual {v10, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 75
    invoke-static {v0}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v1, 0x1

    :goto_b
    if-nez v1, :cond_12

    .line 76
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\\s"

    .line 77
    invoke-static {v4, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {v4, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {v4, v11}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {v1, v12}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v14}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_11

    .line 82
    invoke-static {v0}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "  "

    const-string v3, " "

    const/4 v4, 0x4

    const/4 v8, 0x0

    invoke-static {v0, v2, v3, v8, v4}, Lco7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_11
    new-instance v0, Lvj7;

    invoke-direct {v0, v15}, Lvj7;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_c
    move-object/from16 v1, v20

    goto :goto_e

    .line 83
    :cond_13
    :goto_d
    invoke-virtual {v10, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    .line 84
    iput-object v0, v1, Lwr7;->b:Ljava/lang/String;

    :goto_e
    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v2, p2

    move-object v4, v1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    goto/16 :goto_8

    :cond_14
    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object v1, v4

    const-string v0, "description"

    .line 85
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    goto :goto_f

    :cond_15
    const-string v0, "og:description"

    .line 86
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_f
    if-eqz v0, :cond_16

    goto :goto_10

    :cond_16
    const-string v0, "twitter:description"

    .line 87
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    :goto_10
    iput-object v0, v1, Lwr7;->c:Ljava/lang/String;

    const-string v0, "doc"

    move-object/from16 v4, v18

    .line 89
    invoke-static {v4, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v0

    const-string v6, "doc.title()"

    invoke-static {v0, v6}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    :try_start_1
    invoke-static {v0}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "#title"

    .line 92
    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_17

    move-object/from16 v7, v16

    .line 93
    :try_start_2
    iget-object v8, v7, Les7;->b:Ljs7;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v16, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v10, v7

    move-object/from16 v21, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v8

    move-object v8, v13

    move/from16 v13, v16

    move-object/from16 v22, v14

    move/from16 v14, v18

    move-object/from16 p1, v0

    move-object v0, v15

    move-object/from16 v15, v19

    :try_start_3
    invoke-static/range {v10 .. v15}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v15, v10

    goto :goto_12

    :catch_0
    move-object/from16 p1, v0

    move-object/from16 v21, v11

    move-object v6, v12

    move-object v8, v13

    move-object/from16 v22, v14

    move-object v0, v15

    goto :goto_11

    :catch_1
    :cond_17
    move-object/from16 p1, v0

    move-object/from16 v21, v11

    move-object v6, v12

    move-object v8, v13

    move-object/from16 v22, v14

    move-object v0, v15

    move-object/from16 v7, v16

    :catch_2
    :goto_11
    move-object/from16 v15, p1

    goto :goto_12

    :catch_3
    move-object/from16 v21, v11

    move-object v6, v12

    move-object v8, v13

    move-object/from16 v22, v14

    move-object v0, v15

    move-object/from16 v7, v16

    move-object v15, v3

    :goto_12
    const-string v10, " [\\|\\-\\/>\u00bb] "

    .line 94
    invoke-static {v10, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-static {v10, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, v21

    .line 96
    invoke-static {v10, v14}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {v15, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_19

    const-string v4, " [\\/>\u00bb] "

    .line 99
    invoke-static {v4, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {v4, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {v4, v14}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {v15, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v10, "(.*)[\\|\\-\\/>\u00bb] .*"

    .line 104
    sget-object v11, Lzn7;->f:Lzn7;

    .line 105
    invoke-static {v10, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "option"

    invoke-static {v11, v12}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x42

    .line 106
    invoke-static {v10, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v13, "Pattern.compile(pattern,\u2026nicodeCase(option.value))"

    invoke-static {v10, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {v10, v14}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {v15, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 p1, v4

    const-string v4, "$1"

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v5

    .line 110
    invoke-virtual {v7, v10}, Les7;->f(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v19, v10

    const/4 v10, 0x3

    if-ge v5, v10, :cond_18

    const-string v5, "[^\\|\\-\\/>\u00bb]*[\\|\\-\\/>\u00bb](.*)"

    .line 111
    invoke-static {v5, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x42

    .line 112
    invoke-static {v5, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v13}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {v5, v14}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {v15, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v5, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v5, p1

    goto/16 :goto_17

    :cond_18
    move/from16 v4, p1

    move-object/from16 v10, v19

    goto/16 :goto_15

    :cond_19
    move-object/from16 v16, v0

    move-object/from16 v18, v5

    move-object/from16 v0, v22

    const-string v5, ": "

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 116
    invoke-static {v15, v5, v11, v10}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "h1, h2"

    .line 117
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    const-string v5, "doc.select(\"h1, h2\")"

    invoke-static {v4, v5}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 120
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v15}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 121
    :cond_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_14

    :cond_1c
    const/4 v4, 0x0

    :goto_14
    if-nez v4, :cond_21

    const/16 v4, 0x3a

    const/4 v5, 0x6

    const/4 v10, 0x0

    .line 122
    invoke-static {v15, v4, v10, v10, v5}, Lco7;->o(Ljava/lang/CharSequence;CIZI)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v11, v12}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v7, v11}, Les7;->f(Ljava/lang/String;)I

    move-result v13

    move-object/from16 p1, v11

    const/4 v11, 0x3

    if-ge v13, v11, :cond_1d

    .line 124
    invoke-static {v15, v4, v10, v10, v5}, Lco7;->k(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_15
    move v5, v4

    move-object v4, v10

    goto :goto_17

    .line 125
    :cond_1d
    invoke-static {v15, v4, v10, v10, v5}, Lco7;->k(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    invoke-virtual {v15, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Les7;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_1e

    move-object v4, v15

    goto :goto_16

    :cond_1e
    move-object/from16 v4, p1

    :goto_16
    const/4 v5, 0x0

    :goto_17
    const/4 v10, 0x0

    move v11, v5

    move-object v5, v14

    const/16 v19, 0x0

    move-object/from16 v36, v15

    move-object v15, v4

    move-object/from16 v4, v36

    goto :goto_19

    .line 126
    :cond_1f
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0x96

    if-gt v5, v10, :cond_20

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0xf

    if-ge v5, v10, :cond_21

    :cond_20
    const-string v5, "h1"

    .line 127
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_21

    const/4 v5, 0x0

    .line 129
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v10, "hOnes[0]"

    invoke-static {v4, v10}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v4

    check-cast v11, Lorg/jsoup/nodes/Element;

    iget-object v12, v7, Les7;->b:Ljs7;

    const/4 v13, 0x0

    const/4 v4, 0x4

    const/16 v19, 0x0

    move-object v10, v7

    move-object v5, v14

    move v14, v4

    move-object v4, v15

    move-object/from16 v15, v19

    invoke-static/range {v10 .. v15}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    goto :goto_18

    :cond_21
    move-object v5, v14

    move-object v4, v15

    const/4 v10, 0x0

    move-object v15, v4

    :goto_18
    const/4 v11, 0x0

    move/from16 v19, v10

    :goto_19
    if-eqz v15, :cond_34

    .line 130
    invoke-static {v15}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 131
    invoke-virtual {v7, v15}, Les7;->f(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x4

    if-gt v10, v12, :cond_23

    if-eqz v11, :cond_22

    const-string v11, "[\\|\\-\\/>\u00bb]+"

    .line 132
    invoke-static {v11, v9}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-static {v9, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {v9, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {v4, v6}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v7, v0}, Les7;->f(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v10, v0, :cond_23

    :cond_22
    move-object v15, v4

    .line 138
    :cond_23
    iput-object v15, v1, Lwr7;->a:Ljava/lang/String;

    .line 139
    invoke-static {v15}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "og:title"

    move-object/from16 v2, v18

    .line 140
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_24

    goto :goto_1a

    :cond_24
    const-string v0, "twitter:title"

    .line 141
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1a
    if-eqz v0, :cond_25

    goto :goto_1b

    :cond_25
    move-object v0, v3

    .line 142
    :goto_1b
    iput-object v0, v1, Lwr7;->a:Ljava/lang/String;

    :cond_26
    move-object/from16 v0, v17

    .line 143
    iget-object v10, v0, Lqr7;->f:Lzr7;

    iget-object v11, v0, Lqr7;->b:Lorg/jsoup/nodes/Document;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    move-object v12, v1

    invoke-static/range {v10 .. v16}, Lzr7;->p(Lzr7;Lorg/jsoup/nodes/Document;Lwr7;Lvr7;Lorg/jsoup/nodes/Element;ILjava/lang/Object;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 144
    sget-object v4, Lqr7;->h:La48;

    const-string v5, "Grabbed: {}"

    invoke-interface {v4, v5, v2}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_27

    .line 145
    iget-object v4, v0, Lqr7;->g:Lfs7;

    iget-object v5, v0, Lqr7;->b:Lorg/jsoup/nodes/Document;

    iget-object v6, v0, Lqr7;->a:Ljava/lang/String;

    iget-object v7, v0, Lqr7;->c:Lyr7;

    .line 146
    iget-object v7, v7, Lyr7;->d:Ljava/util/Collection;

    .line 147
    invoke-virtual {v4, v5, v2, v6, v7}, Lfs7;->c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V

    move-object v4, v2

    goto :goto_1c

    :cond_27
    const/4 v4, 0x0

    .line 148
    :goto_1c
    iget-object v5, v1, Lwr7;->c:Ljava/lang/String;

    if-eqz v5, :cond_29

    .line 149
    invoke-static {v5}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_1d

    :cond_28
    const/4 v5, 0x0

    goto :goto_1e

    :cond_29
    :goto_1d
    const/4 v5, 0x1

    :goto_1e
    if-eqz v5, :cond_2a

    if-eqz v2, :cond_2a

    move-object/from16 v5, p0

    .line 150
    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 151
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    const-string v5, "firstParagraph.text()"

    invoke-static {v2, v5}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    iput-object v2, v1, Lwr7;->c:Ljava/lang/String;

    .line 153
    :cond_2a
    iget-object v2, v1, Lwr7;->a:Ljava/lang/String;

    .line 154
    iget-object v1, v1, Lwr7;->b:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 155
    invoke-static {v1}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_1f

    :cond_2b
    const/4 v1, 0x0

    goto :goto_20

    :cond_2c
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    if-eqz v1, :cond_2d

    iget-object v1, v0, Lqr7;->f:Lzr7;

    .line 156
    iget-object v1, v1, Lzr7;->b:Ljava/lang/String;

    .line 157
    :cond_2d
    iget-object v0, v0, Lqr7;->f:Lzr7;

    .line 158
    iget-object v0, v0, Lzr7;->c:Ljava/lang/String;

    .line 159
    new-instance v0, Lrx6;

    move-object/from16 v1, p2

    if-eqz v1, :cond_2e

    .line 160
    iget-boolean v5, v1, Lox6;->a:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    goto :goto_21

    :cond_2e
    const/4 v2, 0x0

    :goto_21
    move-object/from16 v21, v2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    if-eqz v1, :cond_33

    .line 161
    iget-boolean v2, v1, Lox6;->b:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_33

    .line 162
    iget-object v6, v1, Lox6;->c:Ljava/util/List;

    if-eqz v6, :cond_2f

    .line 163
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    const/16 v19, 0x1

    :cond_30
    if-nez v19, :cond_31

    if-eqz v4, :cond_31

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v7, ","

    .line 164
    invoke-static/range {v6 .. v13}, Lek7;->k(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lpl7;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    :cond_31
    if-eqz v4, :cond_32

    .line 165
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_32
    const/4 v1, 0x0

    :goto_22
    move-object v3, v1

    :cond_33
    move-object/from16 v30, v3

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x39fe

    const-string v31, ""

    move-object/from16 v20, v0

    .line 166
    invoke-direct/range {v20 .. v35}, Lrx6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    .line 167
    :cond_34
    new-instance v0, Lvj7;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lvj7;-><init>(Ljava/lang/String;)V

    throw v0
.end method
