.class public Lzr7;
.super Lis7;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:La48;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jsoup/nodes/Element;",
            "Lxr7;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lyr7;

.field public final i:Ljs7;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "section"

    const-string v1, "h2"

    const-string v2, "h3"

    const-string v3, "h4"

    const-string v4, "h5"

    const-string v5, "h6"

    const-string v6, "p"

    const-string v7, "td"

    const-string v8, "pre"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->j:Ljava/util/List;

    const-string v1, "a"

    const-string v2, "blockquote"

    const-string v3, "dl"

    const-string v4, "div"

    const-string v5, "img"

    const-string v6, "ol"

    const-string v7, "p"

    const-string v8, "pre"

    const-string v9, "table"

    const-string v10, "ul"

    const-string v11, "select"

    .line 2
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->k:Ljava/util/List;

    const-string v0, "div"

    const-string v1, "article"

    const-string v2, "section"

    const-string v3, "p"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->l:Ljava/util/List;

    const-string v1, "align"

    const-string v2, "background"

    const-string v3, "bgcolor"

    const-string v4, "border"

    const-string v5, "cellpadding"

    const-string v6, "cellspacing"

    const-string v7, "frame"

    const-string v8, "hspace"

    const-string v9, "rules"

    const-string v10, "style"

    const-string v11, "valign"

    const-string v12, "vspace"

    .line 4
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->m:Ljava/util/List;

    const-string v0, "table"

    const-string v1, "th"

    const-string v2, "td"

    const-string v3, "hr"

    const-string v4, "pre"

    .line 5
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->n:Ljava/util/List;

    const-string v0, "object"

    const-string v2, "embed"

    const-string v3, "iframe"

    .line 6
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->o:Ljava/util/List;

    const-string v0, "col"

    const-string v2, "colgroup"

    const-string v3, "tfoot"

    const-string v4, "thead"

    .line 7
    filled-new-array {v0, v2, v3, v4, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzr7;->p:Ljava/util/List;

    .line 8
    const-class v0, Lzr7;

    invoke-static {v0}, Lb48;->e(Ljava/lang/Class;)La48;

    move-result-object v0

    sput-object v0, Lzr7;->q:La48;

    return-void
.end method

.method public constructor <init>(Lyr7;Ljs7;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regEx"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lis7;-><init>()V

    iput-object p1, p0, Lzr7;->h:Lyr7;

    iput-object p2, p0, Lzr7;->i:Ljs7;

    .line 2
    iget p2, p1, Lyr7;->b:I

    .line 3
    iput p2, p0, Lzr7;->d:I

    .line 4
    iget p1, p1, Lyr7;->c:I

    .line 5
    iput p1, p0, Lzr7;->e:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lzr7;->f:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lzr7;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic l(Lzr7;Lorg/jsoup/nodes/Element;ZILjava/lang/Object;)Lorg/jsoup/nodes/Element;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lzr7;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lzr7;Lorg/jsoup/nodes/Element;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lzr7;->m(Lorg/jsoup/nodes/Element;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lzr7;Lorg/jsoup/nodes/Document;Lwr7;Lvr7;Lorg/jsoup/nodes/Element;ILjava/lang/Object;)Lorg/jsoup/nodes/Element;
    .locals 52

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    and-int/lit8 v0, p5, 0x4

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 1
    new-instance v0, Lvr7;

    const/4 v1, 0x7

    invoke-direct {v0, v10, v10, v10, v1}, Lvr7;-><init>(ZZZI)V

    move-object v11, v0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    and-int/lit8 v0, p5, 0x8

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "doc"

    invoke-static {v7, v12}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "metadata"

    invoke-static {v8, v13}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "options"

    invoke-static {v11, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lzr7;->q:La48;

    const-string v1, "**** grabArticle ****"

    invoke-interface {v0, v1}, La48;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v15

    if-nez v15, :cond_1

    const-string v1, "No body found in document. Abort."

    .line 5
    invoke-interface {v0, v1}, La48;->d(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v5

    .line 7
    :goto_1
    invoke-static {v7, v12}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    :goto_2
    const-string v4, "tagName"

    const-string v3, "p"

    const-string v2, "h2"

    move-object/from16 p3, v5

    const-string v5, "h1"

    const-string v9, "br"

    const-string v10, "body"

    const-string v8, "node"

    move-object/from16 p5, v13

    const-string v13, " "

    move-object/from16 v16, v12

    const-string v12, "div"

    move-object/from16 v17, v15

    if-eqz v1, :cond_17

    .line 9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v14

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-static {v1, v8}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "matchString"

    invoke-static {v13, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v15, v6, Lzr7;->b:Ljava/lang/String;

    const-string v7, "node.text()"

    if-eqz v15, :cond_2

    move-object/from16 v20, v4

    goto :goto_5

    :cond_2
    const-string v15, "rel"

    .line 12
    invoke-virtual {v1, v15}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v4

    const-string v4, "author"

    .line 13
    invoke-static {v15, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v6, Lzr7;->i:Ljs7;

    .line 14
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v4, v4, Ljs7;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;

    move-result-object v4

    const-string v15, "node.wholeText()"

    invoke-static {v4, v15}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "text"

    .line 17
    invoke-static {v4, v15}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v4}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v15, 0x64

    if-ge v4, v15, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lzr7;->b:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_7

    const-string v2, "byline"

    .line 21
    invoke-virtual {v6, v1, v2}, Lzr7;->u(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto/16 :goto_8

    .line 22
    :cond_7
    iget-boolean v4, v11, Lvr7;->a:Z

    if-eqz v4, :cond_8

    .line 23
    iget-object v4, v6, Lzr7;->i:Ljs7;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v4, v4, Ljs7;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 26
    iget-object v4, v6, Lzr7;->i:Ljs7;

    .line 27
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v4, v4, Ljs7;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_8

    .line 29
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v10, 0x1

    xor-int/2addr v4, v10

    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "a"

    invoke-static {v4, v13}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v10

    if-eqz v4, :cond_8

    const-string v2, "Removing unlikely candidate"

    .line 31
    invoke-virtual {v6, v1, v2}, Lzr7;->u(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto/16 :goto_8

    .line 32
    :cond_8
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "section"

    invoke-static {v4, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "header"

    invoke-static {v4, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 33
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "h3"

    invoke-static {v2, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 34
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "h4"

    invoke-static {v2, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "h5"

    invoke-static {v2, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "h6"

    invoke-static {v2, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 35
    :cond_9
    invoke-static {v1, v8}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_a

    .line 38
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "hr"

    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-ne v2, v5, :cond_b

    :cond_a
    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_c

    const-string v2, "node without content"

    .line 39
    invoke-virtual {v6, v1, v2}, Lzr7;->u(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    :goto_8
    move-object/from16 v7, p1

    goto/16 :goto_e

    .line 40
    :cond_c
    sget-object v2, Lzr7;->j:Ljava/util/List;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "element"

    .line 43
    invoke-static {v1, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_e

    goto :goto_9

    .line 45
    :cond_e
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v2

    const-string v4, "element.childNodes()"

    invoke-static {v2, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    .line 47
    instance-of v5, v4, Lorg/jsoup/nodes/TextNode;

    if-eqz v5, :cond_f

    iget-object v5, v6, Lzr7;->i:Ljs7;

    check-cast v4, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v4}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v5, v5, Ljs7;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_9

    :cond_10
    const/16 v18, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_12

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    move-object v1, v3

    goto :goto_d

    .line 53
    :cond_12
    invoke-virtual {v6, v1}, Lzr7;->s(Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 54
    invoke-static {v1, v8}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v20

    invoke-static {v3, v4}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 57
    :cond_13
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v2

    const-string v4, "node.childNodes()"

    invoke-static {v2, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    .line 59
    instance-of v5, v4, Lorg/jsoup/nodes/TextNode;

    if-eqz v5, :cond_14

    move-object v5, v4

    check-cast v5, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v5}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v7

    const-string v8, "childNode.text()"

    invoke-static {v7, v8}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    move-object/from16 v7, p1

    .line 60
    invoke-virtual {v7, v3}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v8

    .line 61
    invoke-virtual {v5}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string v5, "style"

    const-string v9, "display: inline;"

    .line 62
    invoke-virtual {v8, v5, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const-string v5, "readability-styled"

    .line 63
    invoke-virtual {v8, v5}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 64
    invoke-virtual {v4, v8}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    goto :goto_b

    :cond_14
    move-object/from16 v7, p1

    goto :goto_b

    :cond_15
    :goto_c
    move-object/from16 v7, p1

    :goto_d
    if-eqz v1, :cond_16

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 65
    invoke-static {v6, v1, v4, v2, v3}, Lzr7;->l(Lzr7;Lorg/jsoup/nodes/Element;ZILjava/lang/Object;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    :goto_e
    move-object/from16 v8, p2

    move-object/from16 v5, p3

    move-object/from16 v13, p5

    move-object/from16 v12, v16

    move-object/from16 v15, v17

    move-object/from16 v14, v19

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_17
    move-object/from16 v19, v14

    const-string v1, "elementsToScore"

    .line 66
    invoke-static {v0, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v20, 0x0

    move-object/from16 v23, v4

    move-object/from16 v22, v5

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 69
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v24

    if-nez v24, :cond_18

    move-object/from16 v32, p3

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v9

    move-object/from16 v34, v22

    move-object/from16 v33, v23

    move-object/from16 v23, v8

    goto :goto_10

    .line 70
    :cond_18
    iget-object v4, v6, Lzr7;->i:Ljs7;

    const/4 v5, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v30, v9

    move-object v9, v2

    move-object v2, v4

    move-object v4, v3

    move v3, v5

    move-object/from16 v31, v4

    move-object/from16 v24, v9

    move-object/from16 v5, v23

    move-object/from16 v23, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    move/from16 v4, v26

    move-object/from16 v32, p3

    move-object/from16 v33, v5

    move-object/from16 v34, v22

    move-object/from16 v5, v27

    invoke-static/range {v0 .. v5}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_19

    goto :goto_10

    :cond_19
    move-object/from16 v1, v28

    const/4 v2, 0x3

    .line 72
    invoke-virtual {v6, v1, v2}, Lzr7;->m(Lorg/jsoup/nodes/Element;I)Ljava/util/List;

    move-result-object v1

    .line 73
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1a

    :goto_10
    move-object/from16 v22, v12

    move-object/from16 p3, v13

    goto/16 :goto_15

    :cond_1a
    const/4 v2, 0x1

    int-to-double v3, v2

    add-double v3, v3, v20

    new-array v5, v2, [C

    const/16 v2, 0x2c

    const/4 v8, 0x0

    aput-char v2, v5, v8

    const/4 v2, 0x6

    .line 74
    invoke-static {v0, v5, v8, v8, v2}, Lco7;->v(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v8, v2

    add-double/2addr v3, v8

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v8, v0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v8, v8, v20

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    move-object/from16 v22, v12

    move-object/from16 p3, v13

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    add-double/2addr v8, v3

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ltz v0, :cond_22

    const/4 v2, 0x0

    .line 77
    :goto_11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 78
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-static {v4}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v4, 0x0

    goto :goto_13

    :cond_1c
    :goto_12
    const/4 v4, 0x1

    :goto_13
    if-eqz v4, :cond_1d

    goto :goto_15

    .line 79
    :cond_1d
    invoke-virtual {v6, v3}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 80
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v6, v3, v11}, Lzr7;->t(Lorg/jsoup/nodes/Element;Lvr7;)Lxr7;

    :cond_1e
    const/4 v4, 0x1

    if-nez v2, :cond_1f

    goto :goto_14

    :cond_1f
    if-ne v2, v4, :cond_20

    const/4 v4, 0x2

    goto :goto_14

    :cond_20
    mul-int/lit8 v4, v2, 0x3

    .line 82
    :goto_14
    invoke-virtual {v6, v3}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 83
    iget-wide v12, v3, Lxr7;->a:D

    int-to-double v4, v4

    div-double v4, v8, v4

    add-double/2addr v4, v12

    .line 84
    iput-wide v4, v3, Lxr7;->a:D

    :cond_21
    if-eq v2, v0, :cond_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_22
    :goto_15
    move-object/from16 v13, p3

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v30

    move-object/from16 v3, v31

    move-object/from16 p3, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    goto/16 :goto_f

    :cond_23
    move-object/from16 v32, p3

    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v9

    move-object/from16 p3, v13

    move-object/from16 v34, v22

    move-object/from16 v33, v23

    const/4 v2, 0x3

    move-object/from16 v23, v8

    move-object/from16 v22, v12

    const-string v8, "page"

    move-object/from16 v9, v17

    .line 85
    invoke-static {v9, v8}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidates"

    invoke-static {v15, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 88
    invoke-virtual {v6, v3}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 89
    iget-wide v12, v4, Lxr7;->a:D

    move-object/from16 v19, v14

    const/4 v5, 0x1

    int-to-double v14, v5

    .line 90
    invoke-virtual {v6, v3}, Lzr7;->j(Lorg/jsoup/nodes/Element;)D

    move-result-wide v27

    sub-double v14, v14, v27

    mul-double v14, v14, v12

    .line 91
    iput-wide v14, v4, Lxr7;->a:D

    .line 92
    sget-object v4, Lzr7;->q:La48;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const-string v13, "Candidate: {} with score {}"

    invoke-interface {v4, v13, v3, v12}, La48;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget v4, v6, Lzr7;->d:I

    sub-int/2addr v4, v5

    if-ltz v4, :cond_29

    const/4 v5, 0x0

    .line 94
    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v5, :cond_25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsoup/nodes/Element;

    goto :goto_18

    :cond_25
    const/4 v12, 0x0

    :goto_18
    if-eqz v12, :cond_26

    .line 95
    invoke-virtual {v6, v12}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v13

    goto :goto_19

    :cond_26
    const/4 v13, 0x0

    :goto_19
    if-eqz v12, :cond_28

    if-eqz v13, :cond_27

    .line 96
    iget-wide v12, v13, Lxr7;->a:D

    cmpl-double v17, v14, v12

    if-lez v17, :cond_27

    goto :goto_1a

    :cond_27
    if-eq v5, v4, :cond_29

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 97
    :cond_28
    :goto_1a
    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, v6, Lzr7;->d:I

    if-le v3, v4, :cond_29

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_29
    move-object/from16 v14, v19

    goto :goto_16

    :cond_2a
    move-object/from16 v19, v14

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/jsoup/nodes/Element;

    goto :goto_1b

    :cond_2b
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_3e

    .line 101
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_26

    .line 102
    :cond_2c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v6, v1}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 106
    invoke-static {v13, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    if-eqz v13, :cond_2d

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 107
    :cond_2e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 108
    invoke-virtual {v6, v5}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v12

    if-eqz v12, :cond_30

    .line 109
    iget-wide v12, v12, Lxr7;->a:D

    goto :goto_1e

    :cond_30
    move-wide/from16 v12, v20

    :goto_1e
    iget-wide v14, v4, Lxr7;->a:D

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    cmpl-double v17, v12, v14

    if-ltz v17, :cond_2f

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 110
    invoke-static {v6, v5, v14, v12, v13}, Lzr7;->n(Lzr7;Lorg/jsoup/nodes/Element;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 111
    :cond_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_35

    .line 112
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    :goto_1f
    if-eqz v0, :cond_35

    .line 113
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    if-eq v4, v10, :cond_35

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 114
    :goto_20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_33

    if-ge v5, v2, :cond_33

    .line 115
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    add-int/lit8 v5, v5, 0x1

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_33
    if-lt v5, v2, :cond_34

    move-object v1, v0

    goto :goto_21

    .line 116
    :cond_34
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_1f

    .line 117
    :cond_35
    :goto_21
    invoke-virtual {v6, v1}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v0

    if-nez v0, :cond_36

    .line 118
    invoke-virtual {v6, v1, v11}, Lzr7;->t(Lorg/jsoup/nodes/Element;Lvr7;)Lxr7;

    .line 119
    :cond_36
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 120
    invoke-virtual {v6, v1}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 121
    iget-wide v2, v2, Lxr7;->a:D

    goto :goto_22

    :cond_37
    move-wide/from16 v2, v20

    :goto_22
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v4, v2, v4

    :goto_23
    if-eqz v0, :cond_3b

    .line 122
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    xor-int/2addr v12, v13

    if-eqz v12, :cond_3b

    .line 123
    invoke-virtual {v6, v0}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v12

    if-nez v12, :cond_38

    .line 124
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_23

    .line 125
    :cond_38
    iget-wide v12, v12, Lxr7;->a:D

    cmpg-double v14, v12, v4

    if-gez v14, :cond_39

    goto :goto_24

    :cond_39
    cmpl-double v14, v12, v2

    if-lez v14, :cond_3a

    move-object v1, v0

    goto :goto_24

    .line 126
    :cond_3a
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    move-wide v2, v12

    goto :goto_23

    .line 127
    :cond_3b
    :goto_24
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    :goto_25
    if-eqz v0, :cond_3c

    .line 128
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3c

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3c

    .line 129
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    move-object/from16 v51, v1

    move-object v1, v0

    move-object/from16 v0, v51

    goto :goto_25

    .line 130
    :cond_3c
    invoke-virtual {v6, v1}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 131
    invoke-virtual {v6, v1, v11}, Lzr7;->t(Lorg/jsoup/nodes/Element;Lvr7;)Lxr7;

    .line 132
    :cond_3d
    new-instance v0, Lrj7;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v10, v22

    goto :goto_28

    .line 133
    :cond_3e
    :goto_26
    new-instance v0, Lorg/jsoup/nodes/Element;

    move-object/from16 v10, v22

    invoke-direct {v0, v10}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 136
    sget-object v3, Lzr7;->q:La48;

    const-string v4, "Moving child out: {}"

    invoke-interface {v3, v4, v2}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->remove()V

    .line 138
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_27

    .line 139
    :cond_3f
    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 140
    invoke-virtual {v6, v0, v11}, Lzr7;->t(Lorg/jsoup/nodes/Element;Lvr7;)Lxr7;

    .line 141
    new-instance v1, Lrj7;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 142
    :goto_28
    iget-object v1, v0, Lrj7;->e:Ljava/lang/Object;

    .line 143
    move-object v12, v1

    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 144
    iget-object v0, v0, Lrj7;->f:Ljava/lang/Object;

    .line 145
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v14, v16

    .line 146
    invoke-static {v7, v14}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "topCandidate"

    invoke-static {v12, v15}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7, v10}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v5

    const-string v4, "id"

    .line 148
    invoke-virtual {v6, v12}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v3

    const-string v2, "input"

    const-string v1, "nativePattern"

    const-string v0, "Pattern.compile(pattern)"

    move-object/from16 v16, v4

    const-string v4, "pattern"

    move-object/from16 v17, v4

    const-string v4, "articleContent"

    if-nez v3, :cond_40

    .line 149
    invoke-static {v5, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    move-object v7, v4

    move-object/from16 v47, v16

    move-object v4, v1

    move-object/from16 v16, v14

    move-object v14, v5

    move-object v5, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v9

    goto/16 :goto_33

    :cond_40
    move-object/from16 v25, v0

    move-object/from16 v22, v1

    .line 150
    iget-wide v0, v3, Lxr7;->a:D

    const-wide v26, 0x3fc999999999999aL    # 0.2

    mul-double v0, v0, v26

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 151
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    .line 152
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_29
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/jsoup/nodes/Element;

    const-string v0, "sibling"

    .line 155
    invoke-static {v5, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lzr7;->o(Lorg/jsoup/nodes/Element;)Lxr7;

    move-result-object v0

    .line 156
    sget-object v4, Lzr7;->q:La48;

    move-object/from16 v38, v2

    if-eqz v0, :cond_41

    .line 157
    iget-wide v1, v0, Lxr7;->a:D

    .line 158
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_2a

    :cond_41
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    :goto_2a
    const-string v2, "Looking at sibling node: {} with score {}"

    invoke-interface {v4, v2, v5, v1}, La48;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_42

    .line 159
    iget-wide v1, v0, Lxr7;->a:D

    .line 160
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    goto :goto_2b

    :cond_42
    const-string v1, "Unknown"

    :goto_2b
    const-string v2, "Sibling has score {}"

    invoke-interface {v4, v2, v1}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-static {v5, v12}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    goto :goto_2d

    .line 162
    :cond_43
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_44

    .line 163
    iget-wide v1, v3, Lxr7;->a:D

    mul-double v1, v1, v26

    add-double v1, v1, v20

    goto :goto_2c

    :cond_44
    move-wide/from16 v1, v20

    :goto_2c
    move-object/from16 v39, v3

    move-object/from16 v40, v4

    if-eqz v0, :cond_45

    .line 164
    iget-wide v3, v0, Lxr7;->a:D

    add-double/2addr v3, v1

    cmpl-double v0, v3, v35

    if-ltz v0, :cond_45

    :goto_2d
    move-object/from16 v47, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v22

    move-object/from16 v3, v25

    move-object/from16 v49, v29

    move-object/from16 v22, v39

    move-object/from16 v50, v40

    move-object/from16 v17, v9

    move-object/from16 v16, v14

    move-object/from16 v14, v28

    move-object v9, v5

    move-object/from16 v5, v38

    goto/16 :goto_2e

    .line 165
    :cond_45
    invoke-virtual {v6, v5}, Lzr7;->w(Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 166
    invoke-virtual {v6, v5}, Lzr7;->j(Lorg/jsoup/nodes/Element;)D

    move-result-wide v41

    .line 167
    iget-object v2, v6, Lzr7;->i:Ljs7;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v43, 0x0

    move-object/from16 v1, v25

    move-object/from16 v0, p0

    move-object/from16 v45, v1

    move-object/from16 v44, v22

    move-object v1, v5

    move-object/from16 v46, v38

    move-object/from16 v22, v39

    move-object/from16 v47, v16

    move-object/from16 v48, v17

    move-object/from16 v49, v29

    move-object/from16 v50, v40

    move-object/from16 v17, v9

    move-object/from16 v16, v14

    move-object/from16 v14, v28

    move-object v9, v5

    move-object/from16 v5, v43

    invoke-static/range {v0 .. v5}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_46

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v41, v3

    if-gez v5, :cond_46

    move-object/from16 v4, v44

    move-object/from16 v3, v45

    move-object/from16 v5, v46

    move-object/from16 v2, v48

    goto :goto_2e

    :cond_46
    if-ge v1, v2, :cond_47

    if-lez v1, :cond_47

    cmpg-double v1, v41, v20

    if-nez v1, :cond_47

    const-string v1, "\\.( |$)"

    move-object/from16 v2, v48

    .line 169
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v3, v45

    invoke-static {v1, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v44

    .line 171
    invoke-static {v1, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v46

    .line 172
    invoke-static {v0, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_49

    :goto_2e
    const/4 v0, 0x1

    goto :goto_30

    :cond_47
    move-object/from16 v4, v44

    move-object/from16 v3, v45

    move-object/from16 v5, v46

    move-object/from16 v2, v48

    goto :goto_2f

    :cond_48
    move-object/from16 v47, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v22

    move-object/from16 v3, v25

    move-object/from16 v49, v29

    move-object/from16 v22, v39

    move-object/from16 v50, v40

    move-object/from16 v17, v9

    move-object/from16 v16, v14

    move-object/from16 v14, v28

    move-object v9, v5

    move-object/from16 v5, v38

    :cond_49
    :goto_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_4b

    const-string v0, "Appending node: {}"

    move-object/from16 v1, v50

    .line 174
    invoke-interface {v1, v0, v9}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    sget-object v0, Lzr7;->l:Ljava/util/List;

    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "Altering sibling: {} to div."

    .line 176
    invoke-interface {v1, v0, v9}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v23

    .line 177
    invoke-static {v9, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v33

    invoke-static {v10, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_31

    :cond_4a
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    .line 179
    :goto_31
    invoke-virtual {v14, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_32

    :cond_4b
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    :goto_32
    move-object/from16 v7, p1

    move-object/from16 v23, v0

    move-object/from16 v33, v1

    move-object/from16 v25, v3

    move-object/from16 v28, v14

    move-object/from16 v14, v16

    move-object/from16 v9, v17

    move-object/from16 v3, v22

    move-object/from16 v16, v47

    move-object/from16 v29, v49

    move-object/from16 v17, v2

    move-object/from16 v22, v4

    move-object v2, v5

    goto/16 :goto_29

    :cond_4c
    move-object v5, v2

    move-object/from16 v47, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v22

    move-object/from16 v3, v25

    move-object/from16 v7, v29

    move-object/from16 v17, v9

    move-object/from16 v16, v14

    move-object/from16 v14, v28

    .line 180
    invoke-static {v14, v7}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    :goto_33
    sget-object v0, Lzr7;->q:La48;

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v1

    const-string v9, "Article content pre-prep: {}"

    invoke-interface {v0, v9, v1}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-static {v14, v7}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p2

    move-object/from16 v7, p5

    invoke-static {v1, v7}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, v14}, Lzr7;->h(Lorg/jsoup/nodes/Element;)V

    const-string v9, "root"

    .line 184
    invoke-static {v14, v9}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "table"

    .line 185
    invoke-virtual {v14, v9}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    move-object/from16 v19, v8

    const-string v8, "root.getElementsByTag(\"table\")"

    invoke-static {v7, v8}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    move-object/from16 v20, v7

    const-string v7, "role"

    .line 187
    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v12

    const-string v12, "presentation"

    .line 188
    invoke-static {v7, v12}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 189
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    goto/16 :goto_35

    :cond_4d
    const/4 v7, 0x0

    const-string v12, "datatable"

    .line 190
    invoke-virtual {v8, v12}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "0"

    .line 191
    invoke-static {v12, v7}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 192
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    goto/16 :goto_35

    :cond_4e
    const-string v7, "summary"

    .line 193
    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 194
    invoke-static {v12, v7}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v12, 0x1

    xor-int/2addr v7, v12

    if-eqz v7, :cond_4f

    .line 195
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v12}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_35

    :cond_4f
    const-string v7, "caption"

    .line 196
    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    .line 197
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_50

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v7

    if-lez v7, :cond_50

    .line 198
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_35

    .line 199
    :cond_50
    sget-object v7, Lzr7;->p:Ljava/util/List;

    const-string v12, "DATA_TABLE_DESCENDANTS"

    invoke-static {v7, v12}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 201
    invoke-virtual {v8, v12}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_51

    .line 202
    sget-object v7, Lzr7;->q:La48;

    const-string v12, "Data table because found data-y descendant"

    invoke-interface {v7, v12}, La48;->d(Ljava/lang/String;)V

    .line 203
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_35

    .line 204
    :cond_52
    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_53

    .line 205
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    :goto_35
    move-object/from16 v26, v9

    move-object/from16 v23, v10

    move/from16 v22, v13

    goto/16 :goto_3c

    .line 206
    :cond_53
    invoke-static {v8, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {v8, v9}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "tr"

    .line 208
    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    const-string v12, "trs"

    .line 209
    invoke-static {v7, v12}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v22, v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v7

    move-object/from16 v7, v23

    check-cast v7, Lorg/jsoup/nodes/Element;

    move-object/from16 v23, v10

    :try_start_0
    const-string v10, "rowspan"

    .line 211
    invoke-virtual {v7, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v26, v9

    :try_start_1
    const-string v9, "tr.attr(\"rowspan\")"

    invoke-static {v10, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_37

    :catch_0
    move-object/from16 v26, v9

    :catch_1
    const/4 v9, 0x1

    :goto_37
    add-int/2addr v12, v9

    const-string v9, "td"

    .line 212
    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v7

    const-string v9, "tr.getElementsByTag(\"td\")"

    invoke-static {v7, v9}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/Element;

    move-object/from16 v27, v7

    :try_start_2
    const-string v7, "colspan"

    .line 214
    invoke-virtual {v10, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "cell.attr(\"colspan\")"

    invoke-static {v7, v10}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_39

    :catch_2
    const/4 v7, 0x1

    :goto_39
    add-int/2addr v9, v7

    move-object/from16 v7, v27

    goto :goto_38

    .line 215
    :cond_54
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v10, v23

    move-object/from16 v7, v25

    move-object/from16 v9, v26

    goto :goto_36

    :cond_55
    move-object/from16 v26, v9

    move-object/from16 v23, v10

    .line 216
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 217
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/16 v12, 0xa

    if-ge v10, v12, :cond_58

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/4 v13, 0x4

    if-le v10, v13, :cond_56

    goto :goto_3b

    .line 218
    :cond_56
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    mul-int v9, v9, v7

    if-le v9, v12, :cond_57

    const/4 v7, 0x1

    goto :goto_3a

    :cond_57
    const/4 v7, 0x0

    :goto_3a
    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    goto :goto_3c

    :cond_58
    :goto_3b
    const/4 v7, 0x1

    .line 219
    invoke-virtual {v6, v8, v7}, Lzr7;->v(Lorg/jsoup/nodes/Element;Z)V

    :goto_3c
    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v10, v23

    move-object/from16 v9, v26

    goto/16 :goto_34

    :cond_59
    move-object/from16 v26, v9

    move-object/from16 v23, v10

    move-object/from16 v21, v12

    move/from16 v22, v13

    const-string v7, "form"

    .line 220
    invoke-virtual {v6, v14, v7, v11}, Lzr7;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V

    const-string v7, "fieldset"

    .line 221
    invoke-virtual {v6, v14, v7, v11}, Lzr7;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V

    const-string v7, "object"

    .line 222
    invoke-virtual {v6, v14, v7}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v7, "embed"

    .line 223
    invoke-virtual {v6, v14, v7}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    move-object/from16 v7, v34

    .line 224
    invoke-virtual {v6, v14, v7}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v8, "footer"

    .line 225
    invoke-virtual {v6, v14, v8}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v8, "link"

    .line 226
    invoke-virtual {v6, v14, v8}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v8, "share"

    .line 227
    invoke-static {v8, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v2, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-static {v2, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v3

    const-string v4, "articleContent.children()"

    invoke-static {v3, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v8, "e"

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 232
    invoke-static {v4, v15}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-static {v4, v8}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 234
    invoke-virtual {v6, v4, v8}, Lzr7;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 235
    invoke-static {v6, v4, v13, v10, v12}, Lzr7;->l(Lzr7;Lorg/jsoup/nodes/Element;ZILjava/lang/Object;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    :goto_3d
    if-eqz v4, :cond_5a

    .line 236
    invoke-static {v4, v9}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v8

    if-eqz v10, :cond_5a

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 238
    invoke-static {v8, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 240
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    const-string v12, "nativePattern.pattern()"

    invoke-static {v8, v12}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v6, v4, v8}, Lzr7;->u(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    goto :goto_3e

    :cond_5b
    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 242
    invoke-static {v6, v4, v13, v8, v12}, Lzr7;->l(Lzr7;Lorg/jsoup/nodes/Element;ZILjava/lang/Object;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    :goto_3e
    move-object/from16 p3, v10

    const/4 v8, 0x1

    goto :goto_3d

    :cond_5c
    move-object/from16 v4, v24

    .line 243
    invoke-virtual {v14, v4}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5e

    .line 245
    iget-object v3, v1, Lwr7;->a:Ljava/lang/String;

    if-eqz v3, :cond_5e

    .line 246
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5e

    const/4 v9, 0x0

    .line 247
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/Element;

    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 248
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v12, v10

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v12, v24

    if-gez v10, :cond_5e

    const/4 v10, 0x0

    int-to-float v12, v10

    const-string v13, "h2[0].text()"

    cmpl-float v9, v9, v12

    if-lez v9, :cond_5d

    .line 249
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-static {v2, v3, v10, v9}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    goto :goto_3f

    :cond_5d
    const/4 v9, 0x2

    .line 250
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v10, v9}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    :goto_3f
    if-eqz v2, :cond_5e

    .line 251
    invoke-virtual {v6, v14, v4}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    :cond_5e
    const-string v2, "iframe"

    .line 252
    invoke-virtual {v6, v14, v2}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v6, v14, v5}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v2, "textarea"

    .line 254
    invoke-virtual {v6, v14, v2}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v2, "select"

    .line 255
    invoke-virtual {v6, v14, v2}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    const-string v2, "button"

    .line 256
    invoke-virtual {v6, v14, v2}, Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V

    .line 257
    invoke-static {v14, v8}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    filled-new-array {v7, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Arrays.asList(\"h1\", \"h2\")"

    invoke-static {v2, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "it"

    .line 260
    invoke-static {v3, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lbs7;

    invoke-direct {v4, v6, v14, v11}, Lbs7;-><init>(Lzr7;Lorg/jsoup/nodes/Element;Lvr7;)V

    invoke-virtual {v6, v14, v3, v4}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    goto :goto_40

    :cond_5f
    move-object/from16 v3, v26

    .line 261
    invoke-virtual {v6, v14, v3, v11}, Lzr7;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V

    const-string v2, "ul"

    .line 262
    invoke-virtual {v6, v14, v2, v11}, Lzr7;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V

    move-object/from16 v2, v23

    .line 263
    invoke-virtual {v6, v14, v2, v11}, Lzr7;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V

    .line 264
    new-instance v3, Lds7;

    invoke-direct {v3, v6}, Lds7;-><init>(Lzr7;)V

    move-object/from16 v4, v31

    invoke-virtual {v6, v14, v4, v3}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    move-object/from16 v3, v30

    .line 265
    invoke-virtual {v14, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    const-string v5, "articleContent.select(\"br\")"

    invoke-static {v3, v5}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 267
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v7

    iget-object v8, v6, Lzr7;->i:Ljs7;

    invoke-virtual {v6, v7, v8}, Lis7;->c(Lorg/jsoup/nodes/Node;Ljs7;)Lorg/jsoup/nodes/Element;

    move-result-object v7

    if-eqz v7, :cond_60

    .line 268
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 269
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->remove()V

    goto :goto_41

    .line 270
    :cond_61
    sget-object v3, Lzr7;->q:La48;

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Article content post-prep: {}"

    invoke-interface {v3, v5, v4}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "readability-page-1"

    if-eqz v22, :cond_62

    move-object/from16 v4, v21

    move-object/from16 v5, v47

    .line 271
    invoke-virtual {v4, v5, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-object/from16 v7, v19

    .line 272
    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-object/from16 v8, p1

    goto :goto_43

    :cond_62
    move-object/from16 v8, p1

    move-object/from16 v7, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v47

    .line 273
    invoke-virtual {v8, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v5, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 275
    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Node;

    .line 278
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->remove()V

    .line 279
    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_42

    .line 280
    :cond_63
    invoke-virtual {v14, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 281
    :goto_43
    sget-object v2, Lzr7;->q:La48;

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Article content after paging: {}"

    invoke-interface {v2, v5, v3}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v3, v6, Lzr7;->i:Ljs7;

    const/4 v5, 0x1

    invoke-virtual {v6, v14, v3, v5}, Lis7;->a(Lorg/jsoup/nodes/Element;Ljs7;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 284
    iget v5, v6, Lzr7;->e:I

    if-ge v3, v5, :cond_6a

    move-object/from16 v5, v17

    move-object/from16 v7, v32

    .line 285
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 286
    iget-boolean v9, v11, Lvr7;->a:Z

    if-eqz v9, :cond_64

    const/4 v9, 0x0

    .line 287
    iput-boolean v9, v11, Lvr7;->a:Z

    .line 288
    new-instance v10, Lrj7;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v10, v14, v3}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_64
    const/4 v9, 0x0

    .line 289
    iget-boolean v10, v11, Lvr7;->b:Z

    if-eqz v10, :cond_65

    .line 290
    iput-boolean v9, v11, Lvr7;->b:Z

    .line 291
    new-instance v10, Lrj7;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v10, v14, v3}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 292
    :cond_65
    iget-boolean v10, v11, Lvr7;->c:Z

    if-eqz v10, :cond_66

    .line 293
    iput-boolean v9, v11, Lvr7;->c:Z

    .line 294
    new-instance v9, Lrj7;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v9, v14, v3}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_44
    const/4 v2, 0x0

    goto :goto_47

    .line 295
    :cond_66
    new-instance v9, Lrj7;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v9, v14, v3}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_67

    new-instance v3, Lcs7;

    invoke-direct {v3}, Lcs7;-><init>()V

    const-string v10, "$this$sortWith"

    .line 297
    invoke-static {v2, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "comparator"

    invoke-static {v3, v10}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v9, :cond_67

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    :cond_67
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_69

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrj7;

    .line 300
    iget-object v9, v9, Lrj7;->f:Ljava/lang/Object;

    .line 301
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-gtz v9, :cond_68

    goto :goto_45

    .line 302
    :cond_68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrj7;

    .line 303
    iget-object v2, v2, Lrj7;->e:Ljava/lang/Object;

    .line 304
    check-cast v2, Lorg/jsoup/nodes/Element;

    move-object v14, v2

    goto :goto_46

    :cond_69
    :goto_45
    const/4 v9, 0x0

    goto :goto_48

    :cond_6a
    move-object/from16 v5, v17

    move-object/from16 v7, v32

    :goto_46
    const/4 v2, 0x1

    :goto_47
    if-eqz v2, :cond_6d

    .line 305
    invoke-static {v4, v15}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v16

    invoke-static {v8, v2}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/jsoup/nodes/Element;

    .line 306
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Arrays.asList<Element>(t\u2026e.parent(), topCandidate)"

    invoke-static {v1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lek7;->y(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 307
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    const-string v4, "topCandidate.parent()"

    invoke-static {v2, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v6, v2, v3, v0, v4}, Lzr7;->n(Lzr7;Lorg/jsoup/nodes/Element;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "html"

    .line 309
    invoke-virtual {v8, v0}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    const-string v2, "dir"

    .line 311
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "articleDir"

    .line 312
    invoke-static {v1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_6b

    .line 313
    iput-object v1, v6, Lzr7;->c:Ljava/lang/String;

    :cond_6c
    move-object v9, v14

    :goto_48
    return-object v9

    :cond_6d
    move-object/from16 v13, p5

    move-object v14, v0

    move-object v15, v5

    move-object v5, v7

    move-object v7, v8

    move-object/from16 v12, v16

    const/4 v10, 0x0

    move-object v8, v1

    goto/16 :goto_1
.end method

.method public static synthetic r(Lzr7;Lorg/jsoup/nodes/Element;Ljava/lang/String;ILpl7;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x3

    :cond_0
    and-int/lit8 p4, p5, 0x8

    const/4 p4, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lzr7;->q(Lorg/jsoup/nodes/Element;Ljava/lang/String;ILpl7;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lzr7;->o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    new-instance v1, Lzr7$a;

    invoke-direct {v1, p0, v0}, Lzr7$a;-><init>(Lzr7;Z)V

    invoke-virtual {p0, p1, p2, v1}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    return-void
.end method

.method public g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p3, Lvr7;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ul"

    .line 2
    invoke-static {p2, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ol"

    invoke-static {p2, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    new-instance v1, Lzr7$b;

    invoke-direct {v1, p0, p3, v0}, Lzr7$b;-><init>(Lzr7;Lvr7;Z)V

    invoke-virtual {p0, p1, p2, v1}, Lis7;->e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V

    return-void
.end method

.method public h(Lorg/jsoup/nodes/Element;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "svg"

    invoke-static {v0, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readability-styled"

    if-eq v0, v1, :cond_2

    .line 3
    sget-object v0, Lzr7;->m:Ljava/util/List;

    const-string v1, "PRESENTATIONAL_ATTRIBUTES"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lzr7;->n:Ljava/util/List;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "width"

    .line 7
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string v0, "height"

    .line 8
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 9
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v0, "e.children()"

    invoke-static {p1, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    const-string v1, "child"

    .line 11
    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzr7;->h(Lorg/jsoup/nodes/Element;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public i(Lorg/jsoup/nodes/Element;Lvr7;)I
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p2, p2, Lvr7;->b:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object p2

    const-string v1, "e.className()"

    invoke-static {p2, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lzr7;->i:Ljs7;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljs7;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, -0x19

    .line 4
    :cond_1
    iget-object p2, p0, Lzr7;->i:Ljs7;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljs7;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, 0x19

    .line 5
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object p2

    const-string v1, "e.id()"

    invoke-static {p2, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    .line 6
    iget-object p2, p0, Lzr7;->i:Ljs7;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljs7;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 v0, v0, -0x19

    .line 7
    :cond_3
    iget-object p2, p0, Lzr7;->i:Ljs7;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljs7;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v0, v0, 0x19

    :cond_4
    return v0
.end method

.method public j(Lorg/jsoup/nodes/Element;)D
    .locals 9

    const-string v0, "element"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p0, Lzr7;->i:Ljs7;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "a"

    .line 2
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v2, "element.getElementsByTag(\"a\")"

    invoke-static {p1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/jsoup/nodes/Element;

    const-string v2, "linkNode"

    .line 4
    invoke-static {v4, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lzr7;->i:Ljs7;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p2

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public m(Lorg/jsoup/nodes/Element;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "I)",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    const-string v2, "next.parent()"

    invoke-static {p1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public o(Lorg/jsoup/nodes/Element;)Lxr7;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lzr7;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxr7;

    return-object p1
.end method

.method public q(Lorg/jsoup/nodes/Element;Ljava/lang/String;ILpl7;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "I",
            "Lpl7<",
            "-",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagName"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p2, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_3

    if-lez p3, :cond_0

    if-le v1, p3, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "parent.parent()"

    if-eqz v2, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-static {v2, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, v2}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-static {p1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public s(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v0, "element.children()"

    invoke-static {p1, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 3
    sget-object v1, Lzr7;->k:Ljava/util/List;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "node"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzr7;->s(Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public t(Lorg/jsoup/nodes/Element;Lvr7;)Lxr7;
    .locals 5

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lxr7;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lxr7;-><init>(D)V

    .line 2
    iget-object v1, p0, Lzr7;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v2, "h6"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_2
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_3
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_4
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_5
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :sswitch_0
    const-string v2, "blockquote"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v2, "form"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "pre"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :sswitch_3
    const-string v2, "div"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-wide v1, v0, Lxr7;->a:D

    int-to-double v3, v3

    add-double/2addr v1, v3

    .line 10
    iput-wide v1, v0, Lxr7;->a:D

    goto :goto_3

    :sswitch_4
    const-string v2, "ul"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v2, "th"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    :goto_0
    iget-wide v1, v0, Lxr7;->a:D

    int-to-double v3, v3

    sub-double/2addr v1, v3

    .line 14
    iput-wide v1, v0, Lxr7;->a:D

    goto :goto_3

    :sswitch_6
    const-string v2, "td"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :goto_1
    iget-wide v1, v0, Lxr7;->a:D

    int-to-double v3, v4

    add-double/2addr v1, v3

    .line 17
    iput-wide v1, v0, Lxr7;->a:D

    goto :goto_3

    :sswitch_7
    const-string v2, "ol"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_8
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_9
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_a
    const-string v2, "dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_b
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :sswitch_c
    const-string v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :goto_2
    iget-wide v1, v0, Lxr7;->a:D

    int-to-double v3, v4

    sub-double/2addr v1, v3

    .line 20
    iput-wide v1, v0, Lxr7;->a:D

    .line 21
    :cond_1
    :goto_3
    iget-wide v1, v0, Lxr7;->a:D

    .line 22
    invoke-virtual {p0, p1, p2}, Lzr7;->i(Lorg/jsoup/nodes/Element;Lvr7;)I

    move-result p1

    int-to-double p1, p1

    add-double/2addr v1, p1

    .line 23
    iput-wide v1, v0, Lxr7;->a:D

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_c
        0xc80 -> :sswitch_b
        0xc88 -> :sswitch_a
        0xc90 -> :sswitch_9
        0xd7d -> :sswitch_8
        0xddd -> :sswitch_7
        0xe70 -> :sswitch_6
        0xe74 -> :sswitch_5
        0xe97 -> :sswitch_4
        0x18491 -> :sswitch_3
        0x1b2a3 -> :sswitch_2
        0x300cc4 -> :sswitch_1
        0x4dad4a0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xcc9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lzr7;->k(Lorg/jsoup/nodes/Element;Z)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lis7;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    return-object v0
.end method

.method public v(Lorg/jsoup/nodes/Element;Z)V
    .locals 1

    const-string v0, "table"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lzr7;->g:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public w(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    const-string v0, "sibling"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "p"

    invoke-static {p1, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
