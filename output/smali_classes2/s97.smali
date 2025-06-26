.class public Ls97;
.super Lg57;
.source "SourceFile"


# instance fields
.field public final e:Lxs7;


# direct methods
.method public constructor <init>(Lxs7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg57;-><init>()V

    .line 2
    iput-object p1, p0, Ls97;->e:Lxs7;

    return-void
.end method


# virtual methods
.method public A(I)Ln87;
    .locals 4

    .line 1
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    .line 2
    iget-object v1, p0, Ls97;->e:Lxs7;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lxs7;->write(Lxs7;J)V

    .line 3
    new-instance p1, Ls97;

    invoke-direct {p1, v0}, Ls97;-><init>(Lxs7;)V

    return-object p1
.end method

.method public W([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Ls97;->e:Lxs7;

    invoke-virtual {v0, p1, p2, p3}, Lxs7;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "EOF trying to read "

    const-string v0, " bytes"

    invoke-static {p2, p3, v0}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls97;->e:Lxs7;

    .line 2
    iget-wide v1, v0, Lxs7;->f:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lxs7;->skip(J)V

    return-void
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls97;->e:Lxs7;

    .line 2
    iget-wide v0, v0, Lxs7;->f:J

    long-to-int v1, v0

    return v1
.end method

.method public readUnsignedByte()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls97;->e:Lxs7;

    invoke-virtual {v0}, Lxs7;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
