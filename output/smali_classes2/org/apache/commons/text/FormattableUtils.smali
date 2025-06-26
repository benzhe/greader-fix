.class public Lorg/apache/commons/text/FormattableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SIMPLEST_FORMAT:Ljava/lang/String; = "%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;III)Ljava/util/Formatter;
    .locals 7

    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIIC)Ljava/util/Formatter;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_1

    if-ltz p4, :cond_1

    .line 4
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p6, p1, v0

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Specified ellipsis \'%s\' exceeds precision of %s"

    .line 7
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p4, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p4, v3, :cond_3

    if-nez p6, :cond_2

    const-string p6, ""

    .line 10
    :cond_2
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr p4, v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v2, p4, p0, p6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 p0, p2, 0x1

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    :goto_2
    if-ge p0, p3, :cond_6

    if-eqz v1, :cond_5

    move p2, p0

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    .line 12
    :goto_3
    invoke-virtual {v2, p2, p5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 13
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIILjava/lang/CharSequence;)Ljava/util/Formatter;
    .locals 7

    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 3
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/text/FormattableUtils;->append(Ljava/lang/CharSequence;Ljava/util/Formatter;IIICLjava/lang/CharSequence;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/Formattable;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s"

    .line 1
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
