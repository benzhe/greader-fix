.class public Ltr7;
.super Lfs7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfs7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "originalDocument"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheme"

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prePath"

    invoke-static {p4, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathBase"

    invoke-static {p5, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "base"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    if-eqz v6, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-super/range {v1 .. v6}, Lfs7;->b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-super/range {p0 .. p5}, Lfs7;->b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "originalDocument"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "articleContent"

    invoke-static {v0, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "articleUri"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "additionalClassesToPreserve"

    move-object/from16 v5, p4

    invoke-static {v5, v3}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "img"

    .line 2
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    const-string v6, "articleContent.select(\"img\")"

    invoke-static {v3, v6}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "element"

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    const-string v8, "imgElement"

    .line 4
    invoke-static {v6, v8}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "src"

    const-string v9, "data-src"

    const-string v10, "data-original"

    const-string v11, "data-actualsrc"

    const-string v12, "data-lazy-src"

    const-string v13, "data-delayed-url"

    const-string v14, "data-li-src"

    const-string v15, "data-pagespeed-lazy-src"

    .line 5
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {v9}, Lek7;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 7
    invoke-static {v6, v7}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "attributeToSet"

    invoke-static {v8, v7}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "lazyLoadingAttributes"

    invoke-static {v9, v7}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 9
    invoke-virtual {v6, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "value"

    .line 10
    invoke-static {v9, v10}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    .line 11
    invoke-virtual {v6, v8, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0, v7}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "amp-img"

    .line 13
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    const-string v6, "element.getElementsByTag(\"amp-img\")"

    invoke-static {v3, v6}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 15
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v7

    if-nez v7, :cond_3

    .line 16
    new-instance v7, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v7}, Lorg/jsoup/nodes/Attributes;-><init>()V

    const-string v8, "decoding"

    const-string v9, "async"

    .line 17
    invoke-virtual {v7, v8, v9}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    const-string v8, "alt"

    .line 18
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    const-string v8, "srcset"

    .line 19
    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "amp_img.attr(\"srcset\")"

    invoke-static {v9, v10}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 20
    new-instance v8, Lorg/jsoup/nodes/Element;

    invoke-static {v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v9, v10, v7}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {v6, v8}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    .line 21
    :cond_4
    invoke-super/range {p0 .. p4}, Lfs7;->c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method
