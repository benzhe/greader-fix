.class public Lj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public e:Z

.field public f:[J

.field public g:[Ljava/lang/Object;

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj4;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj4;->e:Z

    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Li4;->f(I)I

    move-result v0

    .line 4
    new-array v1, v0, [J

    iput-object v1, p0, Lj4;->f:[J

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj4;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lj4;->h:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj4;->f:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lj4;->i(JLjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lj4;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj4;->f:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lj4;->e()V

    .line 5
    :cond_1
    iget v0, p0, Lj4;->h:I

    .line 6
    iget-object v1, p0, Lj4;->f:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 7
    invoke-static {v1}, Li4;->f(I)I

    move-result v1

    .line 8
    new-array v2, v1, [J

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Lj4;->f:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v3, p0, Lj4;->g:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v2, p0, Lj4;->f:[J

    .line 13
    iput-object v1, p0, Lj4;->g:[Ljava/lang/Object;

    .line 14
    :cond_2
    iget-object v1, p0, Lj4;->f:[J

    aput-wide p1, v1, v0

    .line 15
    iget-object p1, p0, Lj4;->g:[Ljava/lang/Object;

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 16
    iput v0, p0, Lj4;->h:I

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget v0, p0, Lj4;->h:I

    .line 2
    iget-object v1, p0, Lj4;->g:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 3
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p0, Lj4;->h:I

    .line 5
    iput-boolean v2, p0, Lj4;->e:Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj4;->d()Lj4;

    move-result-object v0

    return-object v0
.end method

.method public d()Lj4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj4<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj4;

    .line 2
    iget-object v1, p0, Lj4;->f:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lj4;->f:[J

    .line 3
    iget-object v1, p0, Lj4;->g:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lj4;->g:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final e()V
    .locals 9

    .line 1
    iget v0, p0, Lj4;->h:I

    .line 2
    iget-object v1, p0, Lj4;->f:[J

    .line 3
    iget-object v2, p0, Lj4;->g:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget-object v6, v2, v4

    .line 5
    sget-object v7, Lj4;->i:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 6
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 7
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 8
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v3, p0, Lj4;->e:Z

    .line 10
    iput v5, p0, Lj4;->h:I

    return-void
.end method

.method public f(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lj4;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj4;->f:[J

    iget v1, p0, Lj4;->h:I

    invoke-static {v0, v1, p1, p2}, Li4;->b([JIJ)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2
    iget-object p2, p0, Lj4;->g:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Lj4;->i:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p1, p2, p1

    return-object p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public h(J)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj4;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lj4;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lj4;->f:[J

    iget v1, p0, Lj4;->h:I

    invoke-static {v0, v1, p1, p2}, Li4;->b([JIJ)I

    move-result p1

    return p1
.end method

.method public i(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj4;->f:[J

    iget v1, p0, Lj4;->h:I

    invoke-static {v0, v1, p1, p2}, Li4;->b([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p1, p0, Lj4;->g:[Ljava/lang/Object;

    aput-object p3, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    .line 3
    iget v1, p0, Lj4;->h:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lj4;->g:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Lj4;->i:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 4
    iget-object v1, p0, Lj4;->f:[J

    aput-wide p1, v1, v0

    .line 5
    aput-object p3, v2, v0

    return-void

    .line 6
    :cond_1
    iget-boolean v2, p0, Lj4;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lj4;->f:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lj4;->e()V

    .line 8
    iget-object v0, p0, Lj4;->f:[J

    iget v1, p0, Lj4;->h:I

    invoke-static {v0, v1, p1, p2}, Li4;->b([JIJ)I

    move-result v0

    not-int v0, v0

    .line 9
    :cond_2
    iget v1, p0, Lj4;->h:I

    iget-object v2, p0, Lj4;->f:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 10
    invoke-static {v1}, Li4;->f(I)I

    move-result v1

    .line 11
    new-array v2, v1, [J

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    iget-object v3, p0, Lj4;->f:[J

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v3, p0, Lj4;->g:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v2, p0, Lj4;->f:[J

    .line 16
    iput-object v1, p0, Lj4;->g:[Ljava/lang/Object;

    .line 17
    :cond_3
    iget v1, p0, Lj4;->h:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 18
    iget-object v2, p0, Lj4;->f:[J

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object v1, p0, Lj4;->g:[Ljava/lang/Object;

    iget v2, p0, Lj4;->h:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    :cond_4
    iget-object v1, p0, Lj4;->f:[J

    aput-wide p1, v1, v0

    .line 21
    iget-object p1, p0, Lj4;->g:[Ljava/lang/Object;

    aput-object p3, p1, v0

    .line 22
    iget p1, p0, Lj4;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lj4;->h:I

    :goto_0
    return-void
.end method

.method public j(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4;->f:[J

    iget v1, p0, Lj4;->h:I

    invoke-static {v0, v1, p1, p2}, Li4;->b([JIJ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p2, p0, Lj4;->g:[Ljava/lang/Object;

    aget-object v0, p2, p1

    sget-object v1, Lj4;->i:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 3
    aput-object v1, p2, p1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lj4;->e:Z

    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj4;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lj4;->e()V

    .line 3
    :cond_0
    iget v0, p0, Lj4;->h:I

    return v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lj4;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lj4;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lj4;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lj4;->k()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lj4;->h:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lj4;->h:I

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-boolean v2, p0, Lj4;->e:Z

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lj4;->e()V

    .line 8
    :cond_2
    iget-object v2, p0, Lj4;->f:[J

    aget-wide v3, v2, v1

    .line 9
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, v1}, Lj4;->l(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "(this Map)"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
