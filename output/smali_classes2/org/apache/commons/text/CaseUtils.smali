.class public Lorg/apache/commons/text/CaseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateDelimiterSet([C)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 2
    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_1

    .line 5
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static varargs toCamelCase(Ljava/lang/String;Z[C)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    new-array v1, v0, [I

    .line 5
    invoke-static {p2}, Lorg/apache/commons/text/CaseUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object p2

    const/4 v2, 0x0

    move v5, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 8
    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v3

    move v3, v6

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v4, 0x1

    .line 9
    aput v6, v1, v4

    .line 10
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    move v4, v7

    goto :goto_0

    .line 11
    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 12
    aput v5, v1, v4

    .line 13
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    move v4, v6

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 14
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([III)V

    :cond_6
    return-object p0
.end method
