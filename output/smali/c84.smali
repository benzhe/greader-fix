.class public final Lc84;
.super Le84;
.source "SourceFile"


# instance fields
.field public final i:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le84;-><init>([B)V

    array-length p1, p1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2, p1}, Lg84;->u(III)I

    iput p2, p0, Lc84;->i:I

    return-void
.end method


# virtual methods
.method public final d(I)B
    .locals 5

    iget v0, p0, Lc84;->i:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    const-string v2, "Index < 0: "

    invoke-static {v1, v2, p1}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    const-string v3, "Index > length: "

    const-string v4, ", "

    invoke-static {v2, v3, p1, v4, v0}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Le84;->h:[B

    .line 3
    aget-byte p1, v0, p1

    return p1
.end method

.method public final h(I)B
    .locals 1

    iget-object v0, p0, Le84;->h:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lc84;->i:I

    return v0
.end method

.method public final v()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
