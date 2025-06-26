.class public final Lzr7$b;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzr7;->g(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lvr7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lorg/jsoup/nodes/Element;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lzr7;

.field public final synthetic f:Lvr7;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lzr7;Lvr7;Z)V
    .locals 0

    iput-object p1, p0, Lzr7$b;->e:Lzr7;

    iput-object p2, p0, Lzr7$b;->f:Lvr7;

    iput-boolean p3, p0, Lzr7$b;->g:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v8, p1

    check-cast v8, Lorg/jsoup/nodes/Element;

    const-string v1, "node"

    .line 2
    invoke-static {v8, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Las7;

    invoke-direct {v2, v0}, Las7;-><init>(Lzr7$b;)V

    .line 4
    iget-object v3, v0, Lzr7$b;->e:Lzr7;

    const/4 v4, -0x1

    const-string v5, "table"

    invoke-virtual {v3, v8, v5, v4, v2}, Lzr7;->q(Lorg/jsoup/nodes/Element;Ljava/lang/String;ILpl7;)Z

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v2, v0, Lzr7$b;->e:Lzr7;

    iget-object v3, v0, Lzr7$b;->f:Lvr7;

    invoke-virtual {v2, v8, v3}, Lzr7;->i(Lorg/jsoup/nodes/Element;Lvr7;)I

    move-result v11

    .line 6
    sget-object v2, Lzr7;->q:La48;

    const-string v3, "Cleaning Conditionally {}"

    .line 7
    invoke-interface {v2, v3, v8}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v11, 0x0

    if-gez v2, :cond_1

    goto/16 :goto_4

    .line 8
    :cond_1
    iget-object v2, v0, Lzr7$b;->e:Lzr7;

    const/16 v7, 0x2c

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, v2, Lzr7;->i:Ljs7;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v8

    invoke-static/range {v1 .. v6}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [C

    aput-char v7, v2, v10

    const/4 v3, 0x6

    invoke-static {v1, v2, v10, v10, v3}, Lco7;->v(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    const/16 v2, 0xa

    if-ge v1, v2, :cond_b

    const-string v1, "p"

    .line 11
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v1, "img"

    .line 12
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-string v1, "li"

    .line 13
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x64

    const-string v1, "input"

    .line 14
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const-string v1, "embed"

    .line 15
    invoke-virtual {v8, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const-string v2, "node.getElementsByTag(\"embed\")"

    invoke-static {v1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 17
    iget-object v3, v0, Lzr7$b;->e:Lzr7;

    .line 18
    iget-object v3, v3, Lzr7;->i:Ljs7;

    const-string v4, "src"

    .line 19
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "it.attr(\"src\")"

    invoke-static {v2, v4}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljs7;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 20
    :cond_3
    iget-object v1, v0, Lzr7$b;->e:Lzr7;

    invoke-virtual {v1, v8}, Lzr7;->j(Lorg/jsoup/nodes/Element;)D

    move-result-wide v16

    .line 21
    iget-object v1, v0, Lzr7$b;->e:Lzr7;

    .line 22
    iget-object v3, v1, Lzr7;->i:Ljs7;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, v8

    .line 23
    invoke-static/range {v1 .. v6}, Lis7;->b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-le v13, v9, :cond_5

    int-to-float v1, v12

    int-to-float v2, v13

    div-float/2addr v1, v2

    float-to-double v1, v1

    cmpg-double v3, v1, v18

    if-gez v3, :cond_5

    .line 24
    iget-object v1, v0, Lzr7$b;->e:Lzr7;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    const-string v3, "figure"

    move-object v2, v8

    move v10, v6

    move/from16 v6, v20

    move v9, v7

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lzr7;->r(Lzr7;Lorg/jsoup/nodes/Element;Ljava/lang/String;ILpl7;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    move v10, v6

    move v9, v7

    :goto_1
    iget-boolean v1, v0, Lzr7$b;->g:Z

    if-nez v1, :cond_6

    if-gt v14, v12, :cond_4

    :cond_6
    int-to-double v1, v15

    int-to-double v3, v12

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_4

    iget-boolean v1, v0, Lzr7$b;->g:Z

    const/16 v12, 0x19

    if-nez v1, :cond_7

    if-ge v10, v12, :cond_7

    if-nez v13, :cond_7

    iget-object v1, v0, Lzr7$b;->e:Lzr7;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "figure"

    move-object v2, v8

    .line 26
    invoke-static/range {v1 .. v7}, Lzr7;->r(Lzr7;Lorg/jsoup/nodes/Element;Ljava/lang/String;ILpl7;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_7
    iget-boolean v1, v0, Lzr7$b;->g:Z

    if-nez v1, :cond_8

    if-ge v11, v12, :cond_8

    const-wide v1, 0x3fc999999999999aL    # 0.2

    cmpl-double v3, v16, v1

    if-gtz v3, :cond_4

    :cond_8
    if-lt v11, v12, :cond_9

    cmpl-double v1, v16, v18

    if-gtz v1, :cond_4

    :cond_9
    const/4 v1, 0x1

    if-ne v9, v1, :cond_a

    const/16 v2, 0x4b

    if-lt v10, v2, :cond_c

    :cond_a
    if-le v9, v1, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v9, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v9, 0x1

    .line 27
    :goto_4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method
