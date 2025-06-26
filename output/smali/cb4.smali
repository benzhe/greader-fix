.class public final Lcb4;
.super Lab4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lab4<",
        "Lbb4;",
        "Lbb4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lab4;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lbb4;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lbb4;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lbb4;->a()Lbb4;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lbb4;

    check-cast p1, Lc94;

    iput-object p2, p1, Lc94;->zzc:Lbb4;

    return-void
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc94;

    iget-object p1, p1, Lc94;->zzc:Lbb4;

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lc94;

    iget-object p1, p1, Lc94;->zzc:Lbb4;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lbb4;->e:Z

    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lbb4;->f:Lbb4;

    check-cast p2, Lbb4;

    invoke-virtual {p2, v0}, Lbb4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lbb4;

    .line 1
    iget v0, p1, Lbb4;->a:I

    iget v1, p2, Lbb4;->a:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p1, Lbb4;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p2, Lbb4;->b:[I

    iget v3, p1, Lbb4;->a:I

    iget v4, p2, Lbb4;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p1, Lbb4;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p2, Lbb4;->c:[Ljava/lang/Object;

    iget p1, p1, Lbb4;->a:I

    iget p2, p2, Lbb4;->a:I

    invoke-static {v3, v5, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lbb4;

    const/4 p2, 0x1

    .line 6
    invoke-direct {p1, v0, v1, v2, p2}, Lbb4;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lbb4;

    .line 1
    iget v0, p1, Lbb4;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lbb4;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lbb4;->b:[I

    .line 2
    aget v2, v2, v0

    iget-object v3, p1, Lbb4;->c:[Ljava/lang/Object;

    .line 3
    aget-object v3, v3, v0

    check-cast v3, Lg84;

    const/4 v4, 0x1

    .line 4
    invoke-static {v4}, Ll84;->v(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Ll84;->v(I)I

    move-result v5

    const/4 v6, 0x3

    ushr-int/2addr v2, v6

    invoke-static {v2}, Ll84;->x(I)I

    move-result v2

    invoke-static {v6}, Ll84;->v(I)I

    move-result v6

    .line 5
    invoke-virtual {v3}, Lg84;->j()I

    move-result v3

    add-int/2addr v4, v4

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    .line 6
    invoke-static {v3}, Ll84;->x(I)I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p1, Lbb4;->d:I

    move v0, v1

    :cond_1
    return v0
.end method

.method public final bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbb4;

    invoke-virtual {p1}, Lbb4;->b()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic i(Ljava/lang/Object;Lm84;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lbb4;

    invoke-virtual {p1, p2}, Lbb4;->d(Lm84;)V

    return-void
.end method
