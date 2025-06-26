.class public Lfs7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:La48;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "^[a-zA-Z][a-zA-Z0-9\\+\\-\\.]*:"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfs7;->a:Ljava/util/regex/Pattern;

    const-string v0, "readability-styled"

    const-string v1, "page"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfs7;->b:Ljava/util/List;

    .line 3
    const-class v0, Lfs7;

    invoke-static {v0}, Lb48;->e(Ljava/lang/Class;)La48;

    move-result-object v0

    sput-object v0, Lfs7;->c:La48;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classesToPreserve"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    const-string v1, "node.classNames()"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v1}, Lek7;->y(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_2
    const-string v0, "class"

    .line 7
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 8
    :goto_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v0, "node.children()"

    invoke-static {p1, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    const-string v1, "child"

    .line 10
    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lfs7;->a(Lorg/jsoup/nodes/Element;Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "originalDocument"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheme"

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prePath"

    invoke-static {p4, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pathBase"

    invoke-static {p5, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "a"

    .line 2
    invoke-virtual {p2, v3}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    const-string v4, "element.getElementsByTag(\"a\")"

    invoke-static {v3, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    const-string v5, "href"

    .line 4
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6, v5}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v9, "javascript:"

    .line 6
    invoke-static {v6, v9, v8, v8, v7}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    if-nez v7, :cond_1

    .line 7
    new-instance v5, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v6, p3, p4, p5}, Lfs7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p2, p1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "img"

    .line 11
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p2

    const-string v3, "element.getElementsByTag(\"img\")"

    invoke-static {p2, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 13
    invoke-static {v3, p1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v3, p1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "src"

    .line 15
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 17
    invoke-virtual {p0, v5, p3, p4, p5}, Lfs7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public c(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 13
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

    move-object v0, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v1, "originalDocument"

    invoke-static {p1, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "articleContent"

    invoke-static {p2, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "articleUri"

    invoke-static {v8, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "additionalClassesToPreserve"

    invoke-static {v9, v3}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uri.path"

    const-string v4, "://"

    .line 1
    invoke-static {p1, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "element"

    invoke-static {p2, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "uri"

    .line 3
    invoke-static {v1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/"

    const/4 v12, 0x6

    invoke-static {v1, v3, v11, v11, v12}, Lco7;->p(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v1, "scheme"

    .line 6
    invoke-static {v5, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lfs7;->b(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lfs7;->c:La48;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not fix relative urls for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with base uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, La48;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    .line 8
    sget-object v1, Lfs7;->b:Ljava/util/List;

    aput-object v1, v0, v11

    aput-object v9, v0, v10

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Arrays.asList(CLASSES_TO\u2026itionalClassesToPreserve)"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$flatten"

    .line 9
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 12
    invoke-static {v1, v2}, Ln56;->f(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {v1}, Lek7;->z(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    move-object v1, p0

    .line 14
    invoke-virtual {p0, p2, v0}, Lfs7;->a(Lorg/jsoup/nodes/Element;Ljava/util/Set;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheme"

    invoke-static {p2, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prePath"

    invoke-static {p3, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pathBase"

    invoke-static {p4, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lfs7;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "//"

    invoke-static {v2, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    if-eqz v2, :cond_1

    const-string p3, "://"

    .line 5
    invoke-static {p2, p3}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x2f

    if-ne p2, v2, :cond_2

    .line 7
    invoke-static {p3, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p2, 0x6

    const-string p3, "./"

    .line 8
    invoke-static {p1, p3, v0, v0, p2}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p2

    if-nez p2, :cond_3

    .line 9
    invoke-static {p4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x23

    if-ne p2, p3, :cond_4

    return-object p1

    .line 11
    :cond_4
    invoke-static {p4, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    return-object p1
.end method
