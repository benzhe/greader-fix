.class public Lo87$b;
.super Lg57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:I

.field public final f:I

.field public final g:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lg57;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "offset must be >= 0"

    .line 2
    invoke-static {v2, v3}, Lc50;->t(ZLjava/lang/Object;)V

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "length must be >= 0"

    .line 3
    invoke-static {v2, v3}, Lc50;->t(ZLjava/lang/Object;)V

    add-int/2addr p3, p2

    .line 4
    array-length v2, p1

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    const-string v0, "bytes"

    .line 5
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lo87$b;->g:[B

    .line 6
    iput p2, p0, Lo87$b;->e:I

    .line 7
    iput p3, p0, Lo87$b;->f:I

    return-void
.end method


# virtual methods
.method public A(I)Ln87;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lo87$b;->d()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 2
    iget v0, p0, Lo87$b;->e:I

    add-int v1, v0, p1

    .line 3
    iput v1, p0, Lo87$b;->e:I

    .line 4
    new-instance v1, Lo87$b;

    iget-object v2, p0, Lo87$b;->g:[B

    invoke-direct {v1, v2, v0, p1}, Lo87$b;-><init>([BII)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public W([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo87$b;->g:[B

    iget v1, p0, Lo87$b;->e:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lo87$b;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lo87$b;->e:I

    return-void
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Lo87$b;->f:I

    iget v1, p0, Lo87$b;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedByte()I
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lg57;->a(I)V

    .line 2
    iget-object v0, p0, Lo87$b;->g:[B

    iget v1, p0, Lo87$b;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo87$b;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
