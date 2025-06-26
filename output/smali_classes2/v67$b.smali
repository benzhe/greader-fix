.class public Lv67$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lv67;


# direct methods
.method public constructor <init>(Lv67;Lv67$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv67$b;->a:Lv67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lv67$b;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lv67$b;->a:Lv67;

    .line 2
    iget v1, v0, Lv67;->j:I

    .line 3
    iget v0, v0, Lv67;->i:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lv67$b;->a:Lv67;

    .line 6
    iget-object v2, v1, Lv67;->f:Ljava/util/zip/CRC32;

    .line 7
    iget-object v3, v1, Lv67;->h:[B

    .line 8
    iget v1, v1, Lv67;->i:I

    .line 9
    invoke-virtual {v2, v3, v1, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 10
    iget-object v1, p0, Lv67$b;->a:Lv67;

    .line 11
    iget v2, v1, Lv67;->i:I

    add-int/2addr v2, v0

    iput v2, v1, Lv67;->i:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/16 v1, 0x200

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    .line 12
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 13
    iget-object v6, p0, Lv67$b;->a:Lv67;

    .line 14
    iget-object v6, v6, Lv67;->e:Lc67;

    .line 15
    new-instance v7, Lc67$b;

    invoke-direct {v7, v6, v3, v2}, Lc67$b;-><init>(Lc67;I[B)V

    invoke-virtual {v6, v7, v5}, Lc67;->e(Lc67$c;I)V

    .line 16
    iget-object v6, p0, Lv67$b;->a:Lv67;

    .line 17
    iget-object v6, v6, Lv67;->f:Ljava/util/zip/CRC32;

    .line 18
    invoke-virtual {v6, v2, v3, v5}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr v4, v5

    goto :goto_1

    .line 19
    :cond_1
    iget-object p0, p0, Lv67$b;->a:Lv67;

    .line 20
    iget v0, p0, Lv67;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lv67;->q:I

    return-void
.end method

.method public static b(Lv67$b;)Z
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lv67$b;->a:Lv67;

    .line 2
    iget v1, v0, Lv67;->j:I

    .line 3
    iget v2, v0, Lv67;->i:I

    sub-int/2addr v1, v2

    .line 4
    iget-object v0, v0, Lv67;->e:Lc67;

    .line 5
    iget v0, v0, Lc67;->e:I

    add-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lv67$b;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lv67$b;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lv67$b;->a:Lv67;

    .line 2
    iget v0, p0, Lv67;->j:I

    .line 3
    iget v1, p0, Lv67;->i:I

    sub-int/2addr v0, v1

    .line 4
    iget-object p0, p0, Lv67;->e:Lc67;

    .line 5
    iget p0, p0, Lc67;->e:I

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lv67$b;->a:Lv67;

    .line 2
    iget v1, v0, Lv67;->j:I

    .line 3
    iget v2, v0, Lv67;->i:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 4
    iget-object v1, v0, Lv67;->h:[B

    .line 5
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 6
    iput v2, v0, Lv67;->i:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lv67;->e:Lc67;

    .line 8
    invoke-virtual {v0}, Lc67;->readUnsignedByte()I

    move-result v1

    .line 9
    :goto_0
    iget-object v0, p0, Lv67$b;->a:Lv67;

    .line 10
    iget-object v0, v0, Lv67;->f:Ljava/util/zip/CRC32;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 12
    iget-object v0, p0, Lv67$b;->a:Lv67;

    .line 13
    iget v2, v0, Lv67;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lv67;->q:I

    return v1
.end method

.method public final e()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv67$b;->d()I

    move-result v0

    invoke-virtual {p0}, Lv67$b;->d()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
