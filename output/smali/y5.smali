.class public Ly5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5$a;


# instance fields
.field public a:I

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:[F

.field public f:[I

.field public g:[I

.field public h:I

.field public i:I

.field public final j:Ls5;

.field public final k:Lt5;


# direct methods
.method public constructor <init>(Ls5;Lt5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Ly5;->a:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Ly5;->b:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Ly5;->c:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Ly5;->d:[I

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Ly5;->e:[F

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Ly5;->f:[I

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Ly5;->g:[I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Ly5;->h:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Ly5;->i:I

    .line 11
    iput-object p1, p0, Ly5;->j:Ls5;

    .line 12
    iput-object p2, p0, Ly5;->k:Lt5;

    .line 13
    invoke-virtual {p0}, Ly5;->clear()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ly5;->h:I

    return v0
.end method

.method public b(I)Lx5;
    .locals 6

    .line 1
    iget v0, p0, Ly5;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v2, p0, Ly5;->i:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1

    if-eq v2, v4, :cond_1

    .line 3
    iget-object p1, p0, Ly5;->k:Lt5;

    iget-object p1, p1, Lt5;->d:[Lx5;

    iget-object v0, p0, Ly5;->d:[I

    aget v0, v0, v2

    aget-object p1, p1, v0

    return-object p1

    .line 4
    :cond_1
    iget-object v5, p0, Ly5;->g:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public c()V
    .locals 6

    .line 1
    iget v0, p0, Ly5;->h:I

    .line 2
    iget v1, p0, Ly5;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Ly5;->e:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v4, v4, v5

    aput v4, v3, v1

    .line 4
    iget-object v3, p0, Ly5;->g:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 5

    .line 1
    iget v0, p0, Ly5;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Ly5;->b(I)Lx5;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, p0, Ly5;->j:Ls5;

    invoke-virtual {v3, v4}, Lx5;->b(Ls5;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget v2, p0, Ly5;->a:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Ly5;->d:[I

    aput v3, v2, v0

    .line 6
    iget-object v2, p0, Ly5;->c:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    .line 7
    iget-object v2, p0, Ly5;->b:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8
    :cond_3
    iput v1, p0, Ly5;->h:I

    .line 9
    iput v3, p0, Ly5;->i:I

    return-void
.end method

.method public d(I)F
    .locals 4

    .line 1
    iget v0, p0, Ly5;->h:I

    .line 2
    iget v1, p0, Ly5;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v2, p1, :cond_0

    .line 3
    iget-object p1, p0, Ly5;->e:[F

    aget p1, p1, v1

    return p1

    .line 4
    :cond_0
    iget-object v3, p0, Ly5;->g:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lx5;FZ)V
    .locals 5

    const v0, 0x3a83126f    # 0.001f

    const v1, -0x457ced91    # -0.001f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    cmpg-float v2, p2, v0

    if-gez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ly5;->n(Lx5;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Ly5;->i(Lx5;F)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v3, p0, Ly5;->e:[F

    aget v4, v3, v2

    add-float/2addr v4, p2

    aput v4, v3, v2

    .line 4
    aget p2, v3, v2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    aget p2, v3, v2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 5
    aput p2, v3, v2

    .line 6
    invoke-virtual {p0, p1, p3}, Ly5;->j(Lx5;Z)F

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Lx5;)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ly5;->n(Lx5;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Ly5;->e:[F

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lx5;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ly5;->n(Lx5;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ls5;Z)F
    .locals 7

    .line 1
    iget-object v0, p1, Ls5;->a:Lx5;

    invoke-virtual {p0, v0}, Ly5;->f(Lx5;)F

    move-result v0

    .line 2
    iget-object v1, p1, Ls5;->a:Lx5;

    invoke-virtual {p0, v1, p2}, Ly5;->j(Lx5;Z)F

    .line 3
    iget-object p1, p1, Ls5;->d:Ls5$a;

    check-cast p1, Ly5;

    .line 4
    iget v1, p1, Ly5;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    iget-object v4, p1, Ly5;->d:[I

    aget v5, v4, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 6
    iget-object v5, p1, Ly5;->e:[F

    aget v5, v5, v3

    .line 7
    iget-object v6, p0, Ly5;->k:Lt5;

    iget-object v6, v6, Lt5;->d:[Lx5;

    aget v4, v4, v3

    aget-object v4, v6, v4

    mul-float v5, v5, v0

    .line 8
    invoke-virtual {p0, v4, v5, p2}, Ly5;->e(Lx5;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public i(Lx5;F)V
    .locals 9

    const/4 v0, 0x1

    const v1, -0x457ced91    # -0.001f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 1
    invoke-virtual {p0, p1, v0}, Ly5;->j(Lx5;Z)F

    return-void

    .line 2
    :cond_0
    iget v1, p0, Ly5;->h:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Ly5;->m(ILx5;F)V

    .line 4
    invoke-virtual {p0, p1, v2}, Ly5;->l(Lx5;I)V

    .line 5
    iput v2, p0, Ly5;->i:I

    goto/16 :goto_5

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Ly5;->n(Lx5;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 7
    iget-object p1, p0, Ly5;->e:[F

    aput p2, p1, v1

    goto/16 :goto_5

    .line 8
    :cond_2
    iget v1, p0, Ly5;->h:I

    add-int/2addr v1, v0

    iget v0, p0, Ly5;->a:I

    if-lt v1, v0, :cond_4

    mul-int/lit8 v0, v0, 0x2

    .line 9
    iget-object v1, p0, Ly5;->d:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Ly5;->d:[I

    .line 10
    iget-object v1, p0, Ly5;->e:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Ly5;->e:[F

    .line 11
    iget-object v1, p0, Ly5;->f:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Ly5;->f:[I

    .line 12
    iget-object v1, p0, Ly5;->g:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Ly5;->g:[I

    .line 13
    iget-object v1, p0, Ly5;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Ly5;->c:[I

    .line 14
    iget v1, p0, Ly5;->a:I

    :goto_0
    if-ge v1, v0, :cond_3

    .line 15
    iget-object v4, p0, Ly5;->d:[I

    aput v3, v4, v1

    .line 16
    iget-object v4, p0, Ly5;->c:[I

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_3
    iput v0, p0, Ly5;->a:I

    .line 18
    :cond_4
    iget v0, p0, Ly5;->h:I

    .line 19
    iget v1, p0, Ly5;->i:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1
    if-ge v4, v0, :cond_8

    .line 20
    iget-object v6, p0, Ly5;->d:[I

    aget v7, v6, v1

    iget v8, p1, Lx5;->b:I

    if-ne v7, v8, :cond_5

    .line 21
    iget-object p1, p0, Ly5;->e:[F

    aput p2, p1, v1

    return-void

    .line 22
    :cond_5
    aget v6, v6, v1

    if-ge v6, v8, :cond_6

    move v5, v1

    .line 23
    :cond_6
    iget-object v6, p0, Ly5;->g:[I

    aget v1, v6, v1

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24
    :cond_8
    :goto_2
    iget v0, p0, Ly5;->a:I

    if-ge v2, v0, :cond_a

    .line 25
    iget-object v0, p0, Ly5;->d:[I

    aget v0, v0, v2

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, -0x1

    .line 26
    :goto_3
    invoke-virtual {p0, v2, p1, p2}, Ly5;->m(ILx5;F)V

    if-eq v5, v3, :cond_b

    .line 27
    iget-object p2, p0, Ly5;->f:[I

    aput v5, p2, v2

    .line 28
    iget-object p2, p0, Ly5;->g:[I

    aget v0, p2, v5

    aput v0, p2, v2

    .line 29
    aput v2, p2, v5

    goto :goto_4

    .line 30
    :cond_b
    iget-object p2, p0, Ly5;->f:[I

    aput v3, p2, v2

    .line 31
    iget p2, p0, Ly5;->h:I

    if-lez p2, :cond_c

    .line 32
    iget-object p2, p0, Ly5;->g:[I

    iget v0, p0, Ly5;->i:I

    aput v0, p2, v2

    .line 33
    iput v2, p0, Ly5;->i:I

    goto :goto_4

    .line 34
    :cond_c
    iget-object p2, p0, Ly5;->g:[I

    aput v3, p2, v2

    .line 35
    :goto_4
    iget-object p2, p0, Ly5;->g:[I

    aget v0, p2, v2

    if-eq v0, v3, :cond_d

    .line 36
    iget-object v0, p0, Ly5;->f:[I

    aget p2, p2, v2

    aput v2, v0, p2

    .line 37
    :cond_d
    invoke-virtual {p0, p1, v2}, Ly5;->l(Lx5;I)V

    :goto_5
    return-void
.end method

.method public j(Lx5;Z)F
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ly5;->n(Lx5;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v2, p1, Lx5;->b:I

    rem-int/lit8 v3, v2, 0x10

    .line 3
    iget-object v4, p0, Ly5;->b:[I

    aget v5, v4, v3

    if-ne v5, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v6, p0, Ly5;->d:[I

    aget v6, v6, v5

    if-ne v6, v2, :cond_2

    .line 5
    iget-object v2, p0, Ly5;->c:[I

    aget v6, v2, v5

    aput v6, v4, v3

    .line 6
    aput v1, v2, v5

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v3, p0, Ly5;->c:[I

    aget v4, v3, v5

    if-eq v4, v1, :cond_3

    iget-object v4, p0, Ly5;->d:[I

    aget v6, v3, v5

    aget v4, v4, v6

    if-eq v4, v2, :cond_3

    .line 8
    aget v5, v3, v5

    goto :goto_0

    .line 9
    :cond_3
    aget v4, v3, v5

    if-eq v4, v1, :cond_4

    .line 10
    iget-object v6, p0, Ly5;->d:[I

    aget v6, v6, v4

    if-ne v6, v2, :cond_4

    .line 11
    aget v2, v3, v4

    aput v2, v3, v5

    .line 12
    aput v1, v3, v4

    .line 13
    :cond_4
    :goto_1
    iget-object v2, p0, Ly5;->e:[F

    aget v2, v2, v0

    .line 14
    iget v3, p0, Ly5;->i:I

    if-ne v3, v0, :cond_5

    .line 15
    iget-object v3, p0, Ly5;->g:[I

    aget v3, v3, v0

    iput v3, p0, Ly5;->i:I

    .line 16
    :cond_5
    iget-object v3, p0, Ly5;->d:[I

    aput v1, v3, v0

    .line 17
    iget-object v3, p0, Ly5;->f:[I

    aget v4, v3, v0

    if-eq v4, v1, :cond_6

    .line 18
    iget-object v4, p0, Ly5;->g:[I

    aget v5, v3, v0

    aget v6, v4, v0

    aput v6, v4, v5

    .line 19
    :cond_6
    iget-object v4, p0, Ly5;->g:[I

    aget v5, v4, v0

    if-eq v5, v1, :cond_7

    .line 20
    aget v1, v4, v0

    aget v0, v3, v0

    aput v0, v3, v1

    .line 21
    :cond_7
    iget v0, p0, Ly5;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ly5;->h:I

    .line 22
    iget v0, p1, Lx5;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lx5;->l:I

    if-eqz p2, :cond_8

    .line 23
    iget-object p2, p0, Ly5;->j:Ls5;

    invoke-virtual {p1, p2}, Lx5;->b(Ls5;)V

    :cond_8
    return v2
.end method

.method public k(F)V
    .locals 5

    .line 1
    iget v0, p0, Ly5;->h:I

    .line 2
    iget v1, p0, Ly5;->i:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Ly5;->e:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 4
    iget-object v3, p0, Ly5;->g:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final l(Lx5;I)V
    .locals 3

    .line 1
    iget p1, p1, Lx5;->b:I

    rem-int/lit8 p1, p1, 0x10

    .line 2
    iget-object v0, p0, Ly5;->b:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    aput p2, v0, p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Ly5;->c:[I

    aget v0, p1, v1

    if-eq v0, v2, :cond_1

    .line 5
    aget v1, p1, v1

    goto :goto_0

    .line 6
    :cond_1
    aput p2, p1, v1

    .line 7
    :goto_1
    iget-object p1, p0, Ly5;->c:[I

    aput v2, p1, p2

    return-void
.end method

.method public final m(ILx5;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly5;->d:[I

    iget v1, p2, Lx5;->b:I

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Ly5;->e:[F

    aput p3, v0, p1

    .line 3
    iget-object p3, p0, Ly5;->f:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    .line 4
    iget-object p3, p0, Ly5;->g:[I

    aput v0, p3, p1

    .line 5
    iget-object p1, p0, Ly5;->j:Ls5;

    invoke-virtual {p2, p1}, Lx5;->a(Ls5;)V

    .line 6
    iget p1, p2, Lx5;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lx5;->l:I

    .line 7
    iget p1, p0, Ly5;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly5;->h:I

    return-void
.end method

.method public n(Lx5;)I
    .locals 5

    .line 1
    iget v0, p0, Ly5;->h:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget p1, p1, Lx5;->b:I

    .line 3
    rem-int/lit8 v0, p1, 0x10

    .line 4
    iget-object v2, p0, Ly5;->b:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v2, p0, Ly5;->d:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    return v0

    .line 6
    :cond_2
    :goto_0
    iget-object v2, p0, Ly5;->c:[I

    aget v3, v2, v0

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Ly5;->d:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-eq v3, p1, :cond_3

    .line 7
    aget v0, v2, v0

    goto :goto_0

    .line 8
    :cond_3
    aget v3, v2, v0

    if-ne v3, v1, :cond_4

    return v1

    .line 9
    :cond_4
    iget-object v3, p0, Ly5;->d:[I

    aget v4, v2, v0

    aget v3, v3, v4

    if-ne v3, p1, :cond_5

    .line 10
    aget p1, v2, v0

    return p1

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Ly5;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Ly5;->b(I)Lx5;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ly5;->d(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v3}, Ly5;->n(Lx5;)I

    move-result v3

    const-string v4, "[p: "

    .line 6
    invoke-static {v0, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v4, p0, Ly5;->f:[I

    aget v4, v4, v3

    const-string v5, "none"

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 8
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ly5;->k:Lt5;

    iget-object v4, v4, Lt5;->d:[Lx5;

    iget-object v7, p0, Ly5;->d:[I

    iget-object v8, p0, Ly5;->f:[I

    aget v8, v8, v3

    aget v7, v7, v8

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v0, v5}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v4, ", n: "

    .line 10
    invoke-static {v0, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v4, p0, Ly5;->g:[I

    aget v4, v4, v3

    if-eq v4, v6, :cond_2

    .line 12
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ly5;->k:Lt5;

    iget-object v4, v4, Lt5;->d:[Lx5;

    iget-object v5, p0, Ly5;->d:[I

    iget-object v6, p0, Ly5;->g:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v0, v5}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v3, "]"

    .line 14
    invoke-static {v0, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v1, " }"

    .line 15
    invoke-static {v0, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
