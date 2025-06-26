.class public final Lde5$c;
.super Lde5$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lde5$a;Ljava/lang/Character;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lde5$e;-><init>(Lde5$a;Ljava/lang/Character;)V

    .line 6
    iget-object p1, p1, Lde5$a;->b:[C

    .line 7
    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc50;->r(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 1
    new-instance v0, Lde5$a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lde5$a;-><init>(Ljava/lang/String;[C)V

    .line 2
    invoke-direct {p0, v0, p3}, Lde5$e;-><init>(Lde5$a;Ljava/lang/Character;)V

    .line 3
    iget-object p1, v0, Lde5$a;->b:[C

    .line 4
    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc50;->r(Z)V

    return-void
.end method


# virtual methods
.method public b([BLjava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde5$d;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lde5$e;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lde5$e;->c:Lde5$a;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3
    iget-object v2, v0, Lde5$a;->h:[Z

    iget v0, v0, Lde5$a;->e:I

    rem-int/2addr v1, v0

    aget-boolean v0, v2, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lde5$a;->a(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x12

    .line 6
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lde5$a;->a(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    .line 7
    aput-byte v3, p1, v1

    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 9
    iget-object v1, p0, Lde5$e;->c:Lde5$a;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lde5$a;->a(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 10
    aput-byte v4, p1, v2

    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 12
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lde5$a;->a(C)I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 13
    aput-byte v0, p1, v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v2

    move v0, v4

    goto :goto_0

    :cond_2
    return v1

    .line 14
    :cond_3
    new-instance p1, Lde5$d;

    const-string v0, "Invalid input length "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lde5$d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p3, p4

    .line 1
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lc50;->C(III)V

    :goto_0
    const/4 v1, 0x3

    if-lt p4, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    .line 2
    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p3, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p3, v2

    .line 3
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    ushr-int/lit8 v3, p3, 0x12

    .line 4
    iget-object v2, v2, Lde5$a;->b:[C

    aget-char v2, v2, v3

    .line 5
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    ushr-int/lit8 v3, p3, 0xc

    and-int/lit8 v3, v3, 0x3f

    .line 7
    iget-object v2, v2, Lde5$a;->b:[C

    aget-char v2, v2, v3

    .line 8
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 9
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    ushr-int/lit8 v3, p3, 0x6

    and-int/lit8 v3, v3, 0x3f

    .line 10
    iget-object v2, v2, Lde5$a;->b:[C

    aget-char v2, v2, v3

    .line 11
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 12
    iget-object v2, p0, Lde5$e;->c:Lde5$a;

    and-int/lit8 p3, p3, 0x3f

    .line 13
    iget-object v2, v2, Lde5$a;->b:[C

    aget-char p3, v2, p3

    .line 14
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, -0x3

    move p3, v1

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    sub-int/2addr v0, p3

    .line 15
    invoke-virtual {p0, p1, p2, p3, v0}, Lde5$e;->g(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method

.method public h(Lde5$a;Ljava/lang/Character;)Lde5;
    .locals 1

    .line 1
    new-instance v0, Lde5$c;

    invoke-direct {v0, p1, p2}, Lde5$c;-><init>(Lde5$a;Ljava/lang/Character;)V

    return-object v0
.end method
