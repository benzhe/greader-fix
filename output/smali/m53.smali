.class public final Lm53;
.super Lt53;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt53;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lk53;->K(III)I

    .line 3
    iput p2, p0, Lm53;->i:I

    .line 4
    iput p3, p0, Lm53;->j:I

    return-void
.end method


# virtual methods
.method public final C(I)B
    .locals 2

    .line 1
    iget v0, p0, Lm53;->j:I

    .line 2
    invoke-static {p1, v0}, Lk53;->p(II)V

    .line 3
    iget-object v0, p0, Lt53;->h:[B

    iget v1, p0, Lm53;->i:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final G(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lt53;->h:[B

    iget v1, p0, Lm53;->i:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final R()I
    .locals 1

    .line 1
    iget v0, p0, Lm53;->i:I

    return v0
.end method

.method public final r([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt53;->h:[B

    .line 2
    iget v1, p0, Lm53;->i:I

    add-int/2addr v1, p2

    .line 3
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lm53;->j:I

    return v0
.end method
