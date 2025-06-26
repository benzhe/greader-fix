.class public final Lwj4;
.super Lak4;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lak4;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lvj4;->r(III)I

    .line 3
    iput p2, p0, Lwj4;->i:I

    .line 4
    iput p3, p0, Lwj4;->j:I

    return-void
.end method


# virtual methods
.method public final d(I)B
    .locals 5

    .line 1
    iget v0, p0, Lwj4;->j:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    const-string v2, "Index < 0: "

    invoke-static {v1, v2, p1}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    const-string v3, "Index > length: "

    const-string v4, ", "

    invoke-static {v2, v3, p1, v4, v0}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    iget-object v0, p0, Lak4;->h:[B

    iget v1, p0, Lwj4;->i:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lwj4;->j:I

    return v0
.end method

.method public final p(I)B
    .locals 2

    .line 1
    iget-object v0, p0, Lak4;->h:[B

    iget v1, p0, Lwj4;->i:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Lwj4;->i:I

    return v0
.end method
