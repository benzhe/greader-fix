.class public Lco7;
.super Lao7;
.source "SourceFile"


# direct methods
.method public static synthetic A(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lco7;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final B(Ljava/lang/CharSequence;Ldn7;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$substring"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lbn7;->e:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    iget p1, p1, Lbn7;->f:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "$this$substringAfterLast"

    .line 1
    invoke-static {p0, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "missingDelimiterValue"

    invoke-static {p2, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v0, 0x6

    .line 2
    invoke-static {p0, p1, p3, p3, v0}, Lco7;->o(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p2
.end method

.method public static final D(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    const-string v0, "$this$toIntOrNull"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ln56;->v(I)I

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 5
    invoke-static {v4, v5}, Lim7;->g(II)I

    move-result v5

    const v6, -0x7fffffff

    const/4 v7, 0x1

    if-gez v5, :cond_3

    if-ne v1, v7, :cond_1

    goto :goto_4

    :cond_1
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    const/high16 v6, -0x80000000

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const v5, -0x38e38e3

    const v8, -0x38e38e3

    :goto_2
    if-ge v4, v1, :cond_7

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 7
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_4

    goto :goto_4

    :cond_4
    if-ge v3, v8, :cond_5

    if-ne v8, v5, :cond_9

    .line 8
    div-int/lit8 v8, v6, 0xa

    if-ge v3, v8, :cond_5

    goto :goto_4

    :cond_5
    mul-int/lit8 v3, v3, 0xa

    add-int v10, v6, v9

    if-ge v3, v10, :cond_6

    goto :goto_4

    :cond_6
    sub-int/2addr v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_8
    neg-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    move-object v2, p0

    :cond_9
    :goto_4
    return-object v2
.end method

.method public static final E(Ljava/lang/String;)Ljava/lang/Long;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "$this$toLongOrNull"

    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 2
    invoke-static {v1}, Ln56;->v(I)I

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 5
    invoke-static {v4, v5}, Lim7;->g(II)I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-gez v5, :cond_3

    if-ne v2, v8, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    move-wide v11, v9

    :goto_1
    if-ge v8, v2, :cond_8

    .line 6
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 7
    invoke-static {v13, v1}, Ljava/lang/Character;->digit(II)I

    move-result v13

    if-gez v13, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v14, v4, v11

    if-gez v14, :cond_5

    cmp-long v14, v11, v9

    if-nez v14, :cond_6

    int-to-long v11, v1

    .line 8
    div-long v11, v6, v11

    cmp-long v14, v4, v11

    if-gez v14, :cond_5

    goto :goto_2

    :cond_5
    int-to-long v14, v1

    mul-long v4, v4, v14

    int-to-long v13, v13

    add-long v15, v6, v13

    cmp-long v17, v4, v15

    if-gez v17, :cond_7

    :cond_6
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    sub-long/2addr v4, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_9
    neg-long v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public static final F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "$this$trim"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gt v2, v0, :cond_4

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    .line 2
    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 3
    invoke-static {v4}, Ln56;->o1(C)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    .line 4
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    and-int/lit8 p1, p2, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p1, "|"

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, "$this$trimMargin"

    .line 1
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$replaceIndentByMargin"

    .line 2
    invoke-static {p0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "newIndent"

    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    const-string v0, "$this$lines"

    .line 4
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$lineSequence"

    .line 5
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\r\n"

    const-string v1, "\n"

    const-string v2, "\r"

    .line 6
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "$this$splitToSequence"

    .line 7
    invoke-static {p0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "delimiters"

    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lek7;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Lxn7;

    new-instance v2, Leo7;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Leo7;-><init>(Ljava/util/List;Z)V

    invoke-direct {v1, p0, v3, v3, v2}, Lxn7;-><init>(Ljava/lang/CharSequence;IILtl7;)V

    .line 10
    new-instance v0, Lfo7;

    invoke-direct {v0, p0}, Lfo7;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "$this$map"

    .line 11
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transform"

    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lvn7;

    invoke-direct {v2, v1, v0}, Lvn7;-><init>(Lsn7;Lpl7;)V

    .line 13
    invoke-static {v2}, Ln56;->u2(Lsn7;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x0

    add-int/2addr v1, p0

    .line 15
    sget-object p0, Lbo7;->e:Lbo7;

    .line 16
    invoke-static {v0}, Lek7;->h(Ljava/util/List;)I

    move-result v2

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_9

    .line 19
    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_1

    if-ne v5, v2, :cond_2

    .line 20
    :cond_1
    invoke-static {v6}, Lco7;->n(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, p2

    goto :goto_6

    .line 21
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    :goto_2
    const/4 v9, -0x1

    if-ge v8, v5, :cond_4

    .line 22
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 23
    invoke-static {v10}, Ln56;->o1(C)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, -0x1

    :goto_3
    if-ne v8, v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x4

    .line 24
    invoke-static {v6, p1, v8, v3, v5}, Lco7;->z(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object v5, p2

    :goto_5
    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {p0, v5}, Lbo7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    .line 26
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v5, v7

    goto :goto_1

    .line 27
    :cond_9
    invoke-static {}, Lek7;->q()V

    throw p2

    .line 28
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, -0x1

    const/4 v11, 0x0

    const-string v6, "\n"

    const-string v8, ""

    const-string v10, "..."

    move-object v5, p0

    move-object v7, v8

    .line 29
    invoke-static/range {v4 .. v11}, Lek7;->j(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lpl7;)Ljava/lang/Appendable;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 31
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "marginPrefix must be non-blank string."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/CharSequence;CZI)Z
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "$this$contains"

    .line 1
    invoke-static {p0, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1, v1, p2, v0}, Lco7;->k(Ljava/lang/CharSequence;CIZI)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "$this$contains"

    .line 1
    invoke-static {p0, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "other"

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v1, p2, v0}, Lco7;->l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z
    .locals 8

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, p2

    :goto_0
    const-string p2, "$this$endsWith"

    .line 1
    invoke-static {p0, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "suffix"

    invoke-static {p1, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_1

    .line 2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lco7;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    sub-int v3, p2, p3

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lco7;->s(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "$this$endsWith"

    .line 1
    invoke-static {p0, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "suffix"

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int v1, p2, p3

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lco7;->q(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    if-nez p2, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static final f(Lum7;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lum7;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$CASE_INSENSITIVE_ORDER"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v0, "java.lang.String.CASE_INSENSITIVE_ORDER"

    invoke-static {p0, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final g(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "$this$lastIndex"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final h(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 7

    const-string v0, "$this$indexOf"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lco7;->j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final i(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    new-instance p5, Ldn7;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p5, p2, p3}, Ldn7;-><init>(II)V

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {p0}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result p5

    if-le p2, p5, :cond_3

    move p2, p5

    :cond_3
    if-gez p3, :cond_4

    const/4 p3, 0x0

    :cond_4
    invoke-static {p2, p3}, Len7;->b(II)Lbn7;

    move-result-object p5

    .line 3
    :goto_0
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_7

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 4
    iget p2, p5, Lbn7;->e:I

    .line 5
    iget p3, p5, Lbn7;->f:I

    .line 6
    iget p5, p5, Lbn7;->g:I

    if-ltz p5, :cond_5

    if-gt p2, p3, :cond_a

    goto :goto_1

    :cond_5
    if-lt p2, p3, :cond_a

    .line 7
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lco7;->q(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    return p2

    :cond_6
    if-eq p2, p3, :cond_a

    add-int/2addr p2, p5

    goto :goto_1

    .line 8
    :cond_7
    iget p2, p5, Lbn7;->e:I

    .line 9
    iget p3, p5, Lbn7;->f:I

    .line 10
    iget p5, p5, Lbn7;->g:I

    if-ltz p5, :cond_8

    if-gt p2, p3, :cond_a

    goto :goto_2

    :cond_8
    if-lt p2, p3, :cond_a

    :goto_2
    const/4 v1, 0x0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lco7;->s(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    return p2

    :cond_9
    if-eq p2, p3, :cond_a

    add-int/2addr p2, p5

    goto :goto_2

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZI)I
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lco7;->i(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/CharSequence;CIZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "$this$indexOf"

    .line 1
    invoke-static {p0, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 2
    instance-of p4, p0, Ljava/lang/String;

    if-nez p4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p4, 0x1

    new-array p4, p4, [C

    aput-char p1, p4, v1

    .line 4
    invoke-static {p0, p4, p2, p3}, Lco7;->m(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static synthetic l(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lco7;->h(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final m(Ljava/lang/CharSequence;[CIZ)I
    .locals 7

    const-string v0, "$this$indexOfAny"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1
    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->a2([C)C

    move-result p1

    .line 3
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    :cond_1
    invoke-static {p0}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt p2, v2, :cond_5

    .line 5
    :goto_0
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 6
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-char v6, p1, v5

    .line 7
    invoke-static {v6, v3, p3}, Ln56;->v0(CCZ)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    return p2

    :cond_4
    if-eq p2, v2, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static final n(Ljava/lang/CharSequence;)Z
    .locals 4

    const-string v0, "$this$isBlank"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, "$this$indices"

    .line 2
    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ldn7;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v2, v3}, Ldn7;-><init>(II)V

    .line 4
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lbn7;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    move-object v3, v0

    check-cast v3, Lcn7;

    .line 6
    iget-boolean v3, v3, Lcn7;->f:Z

    if-eqz v3, :cond_2

    .line 7
    move-object v3, v0

    check-cast v3, Lkk7;

    invoke-virtual {v3}, Lkk7;->a()I

    move-result v3

    .line 8
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ln56;->o1(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method

.method public static o(Ljava/lang/CharSequence;CIZI)I
    .locals 4

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "$this$lastIndexOf"

    .line 2
    invoke-static {p0, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 3
    instance-of p4, p0, Ljava/lang/String;

    if-nez p4, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_4

    :cond_3
    :goto_0
    const/4 p4, 0x1

    new-array v1, p4, [C

    aput-char p1, v1, v0

    const-string p1, "$this$lastIndexOfAny"

    .line 5
    invoke-static {p0, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chars"

    invoke-static {v1, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_4

    .line 6
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 7
    invoke-static {v1}, Ln56;->a2([C)C

    move-result p1

    .line 8
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_4

    .line 9
    :cond_4
    invoke-static {p0}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p2, p1, :cond_5

    move p2, p1

    :cond_5
    :goto_1
    if-ltz p2, :cond_9

    .line 10
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_7

    .line 11
    aget-char v3, v1, v2

    .line 12
    invoke-static {v3, p1, p3}, Ln56;->v0(CCZ)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_8

    move p0, p2

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_9
    const/4 p0, -0x1

    :goto_4
    return p0
.end method

.method public static p(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 6

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p0}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    move v2, p2

    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p3

    :goto_0
    const-string p2, "$this$lastIndexOf"

    .line 2
    invoke-static {p0, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "string"

    invoke-static {p1, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_3

    .line 3
    instance-of p2, p0, Ljava/lang/String;

    if-nez p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-static/range {v0 .. v5}, Lco7;->i(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    :goto_2
    return p0
.end method

.method public static final q(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .locals 6

    const-string v0, "$this$regionMatches"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, p5

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic r(Ljava/lang/String;ILjava/lang/String;IIZI)Z
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lco7;->q(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static final s(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 4

    const-string v0, "$this$regionMatchesImpl"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_3

    if-ltz p1, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, p1, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Ln56;->v0(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final t(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$removePrefix"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, p1, v0, v1}, Lco7;->y(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "$this$replace"

    .line 1
    invoke-static {p0, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oldValue"

    invoke-static {p1, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "newValue"

    invoke-static {p2, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1, v0, p3}, Lco7;->h(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p4

    if-gez p4, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    if-ltz v4, :cond_5

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    :cond_3
    invoke-virtual {v3, p0, v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, p4, v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt p4, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr p4, v2

    .line 8
    invoke-static {p0, p1, p4, p3}, Lco7;->h(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p4

    if-gtz p4, :cond_3

    .line 9
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "stringBuilder.append(this, i, length).toString()"

    invoke-static {p0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0

    .line 10
    :cond_5
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public static v(Ljava/lang/CharSequence;[CZII)Ljava/util/List;
    .locals 5

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "$this$split"

    .line 1
    invoke-static {p0, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "delimiters"

    invoke-static {p1, p4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length p4, p1

    const/16 v0, 0xa

    const/16 v2, 0x2e

    const-string v3, "Limit must be non-negative, but was "

    const/4 v4, 0x1

    if-ne p4, v4, :cond_b

    .line 3
    aget-char p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    if-ltz p3, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_a

    .line 4
    invoke-static {p0, p1, v1, p2}, Lco7;->h(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p4

    const/4 v2, -0x1

    if-eq p4, v2, :cond_9

    if-ne p3, v4, :cond_3

    goto :goto_4

    :cond_3
    if-lez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 5
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    if-le p3, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, p3

    :cond_6
    :goto_2
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :cond_7
    invoke-interface {p0, v1, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, v0, p4

    if-eqz v4, :cond_8

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 v0, p3, -0x1

    if-ne p4, v0, :cond_8

    goto :goto_3

    .line 9
    :cond_8
    invoke-static {p0, p1, v1, p2}, Lco7;->h(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p4

    if-ne p4, v2, :cond_7

    .line 10
    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 11
    :cond_9
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln56;->r1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_7

    .line 12
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-ltz p3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    .line 13
    new-instance p4, Lxn7;

    new-instance v2, Ldo7;

    invoke-direct {v2, p1, p2}, Ldo7;-><init>([CZ)V

    invoke-direct {p4, p0, v1, p3, v2}, Lxn7;-><init>(Ljava/lang/CharSequence;IILtl7;)V

    const-string p1, "$this$asIterable"

    .line 14
    invoke-static {p4, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lun7;

    invoke-direct {p1, p4}, Lun7;-><init>(Lsn7;)V

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Ln56;->x(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-virtual {p1}, Lun7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ldn7;

    .line 19
    invoke-static {p0, p2}, Lco7;->B(Ljava/lang/CharSequence;Ldn7;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    :goto_7
    return-object v3

    .line 20
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6

    const-string v0, "$this$startsWith"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lco7;->q(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static final x(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, "$this$startsWith"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lco7;->q(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static y(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z
    .locals 8

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, p2

    :goto_0
    const-string p2, "$this$startsWith"

    .line 1
    invoke-static {p0, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "prefix"

    invoke-static {p1, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_1

    .line 2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lco7;->s(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static synthetic z(Ljava/lang/String;Ljava/lang/String;IZI)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lco7;->w(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method
