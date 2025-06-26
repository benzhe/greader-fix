.class public final Lqi6$d;
.super Lqi6$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqi6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lqi6$h;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lqi6;->l(III)I

    .line 3
    iput p2, p0, Lqi6$d;->i:I

    .line 4
    iput p3, p0, Lqi6$d;->j:I

    return-void
.end method


# virtual methods
.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lqi6$d;->i:I

    return v0
.end method

.method public h(I)B
    .locals 2

    .line 1
    iget v0, p0, Lqi6$d;->j:I

    .line 2
    invoke-static {p1, v0}, Lqi6;->j(II)V

    .line 3
    iget-object v0, p0, Lqi6$h;->h:[B

    iget v1, p0, Lqi6$d;->i:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public r([BIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqi6$h;->h:[B

    .line 2
    iget v1, p0, Lqi6$d;->i:I

    add-int/2addr v1, p2

    .line 3
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lqi6$d;->j:I

    return v0
.end method

.method public u(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lqi6$h;->h:[B

    iget v1, p0, Lqi6$d;->i:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method
