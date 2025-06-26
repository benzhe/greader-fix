.class public Le84;
.super Lg84;
.source "SourceFile"


# instance fields
.field public final h:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg84;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Le84;->h:[B

    return-void
.end method


# virtual methods
.method public d(I)B
    .locals 1

    iget-object v0, p0, Le84;->h:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lg84;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Le84;->j()I

    move-result v1

    .line 2
    move-object v3, p1

    check-cast v3, Lg84;

    invoke-virtual {v3}, Lg84;->j()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Le84;->j()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 3
    :cond_3
    instance-of v1, p1, Le84;

    if-eqz v1, :cond_a

    .line 4
    check-cast p1, Le84;

    .line 5
    iget v1, p0, Lg84;->e:I

    .line 6
    iget v3, p1, Lg84;->e:I

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 7
    :cond_5
    :goto_0
    invoke-virtual {p0}, Le84;->j()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Le84;->j()I

    move-result v3

    if-gt v1, v3, :cond_9

    .line 9
    invoke-virtual {p1}, Le84;->j()I

    move-result v3

    if-gt v1, v3, :cond_8

    .line 10
    iget-object v3, p0, Le84;->h:[B

    .line 11
    iget-object v4, p1, Le84;->h:[B

    .line 12
    invoke-virtual {p1}, Le84;->v()I

    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge p1, v1, :cond_7

    .line 13
    aget-byte v6, v3, p1

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0

    .line 14
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-virtual {p1}, Le84;->j()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ran off end of other: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Le84;->j()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(I)B
    .locals 1

    iget-object v0, p0, Le84;->h:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Le84;->h:[B

    array-length v0, v0

    return v0
.end method

.method public final l(II)Lg84;
    .locals 1

    invoke-virtual {p0}, Le84;->j()I

    move-result p1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p2, p1}, Lg84;->u(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lg84;->f:Lg84;

    return-object p1

    :cond_0
    new-instance p2, Lc84;

    iget-object v0, p0, Le84;->h:[B

    .line 2
    invoke-direct {p2, v0, p1}, Lc84;-><init>([BI)V

    return-object p2
.end method

.method public final n(Ly74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Le84;->h:[B

    invoke-virtual {p0}, Le84;->j()I

    move-result v1

    check-cast p1, Lj84;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v0, v2, v1}, Lj84;->A([BII)V

    return-void
.end method

.method public final o(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Le84;->h:[B

    invoke-virtual {p0}, Le84;->j()I

    move-result v2

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Le84;->h:[B

    invoke-virtual {p0}, Le84;->j()I

    move-result v1

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2, v1}, Lqb4;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final r(III)I
    .locals 2

    iget-object p2, p0, Le84;->h:[B

    .line 1
    sget-object v0, Lj94;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    .line 2
    aget-byte v1, p2, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public v()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
