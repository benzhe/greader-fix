.class public Lw6;
.super Lx6;
.source "SourceFile"


# instance fields
.field public k:Lq6;

.field public l:Lr6;


# direct methods
.method public constructor <init>(Lc6;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lx6;-><init>(Lc6;)V

    .line 2
    new-instance p1, Lq6;

    invoke-direct {p1, p0}, Lq6;-><init>(Lx6;)V

    iput-object p1, p0, Lw6;->k:Lq6;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lw6;->l:Lr6;

    .line 4
    iget-object v0, p0, Lx6;->h:Lq6;

    sget-object v1, Lq6$a;->j:Lq6$a;

    iput-object v1, v0, Lq6;->e:Lq6$a;

    .line 5
    iget-object v0, p0, Lx6;->i:Lq6;

    sget-object v1, Lq6$a;->k:Lq6$a;

    iput-object v1, v0, Lq6;->e:Lq6$a;

    .line 6
    sget-object v0, Lq6$a;->l:Lq6$a;

    iput-object v0, p1, Lq6;->e:Lq6$a;

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lx6;->f:I

    return-void
.end method


# virtual methods
.method public a(Lo6;)V
    .locals 8

    .line 1
    sget-object p1, Lc6$a;->g:Lc6$a;

    iget-object v0, p0, Lx6;->j:Lx6$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lx6;->b:Lc6;

    iget-object v0, p1, Lc6;->B:Lb6;

    iget-object p1, p1, Lc6;->D:Lb6;

    invoke-virtual {p0, v0, p1, v3}, Lx6;->l(Lb6;Lb6;I)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-boolean v4, v0, Lq6;->c:Z

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Lq6;->j:Z

    if-nez v4, :cond_7

    .line 4
    iget-object v4, p0, Lx6;->d:Lc6$a;

    if-ne v4, p1, :cond_7

    .line 5
    iget-object v4, p0, Lx6;->b:Lc6;

    iget v7, v4, Lc6;->k:I

    if-eq v7, v2, :cond_6

    if-eq v7, v1, :cond_2

    goto :goto_4

    .line 6
    :cond_2
    iget-object v1, v4, Lc6;->d:Lu6;

    iget-object v1, v1, Lx6;->e:Lr6;

    iget-boolean v2, v1, Lq6;->j:Z

    if-eqz v2, :cond_7

    .line 7
    iget v2, v4, Lc6;->Q:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    .line 8
    :cond_3
    iget v1, v1, Lq6;->g:I

    int-to-float v1, v1

    .line 9
    iget v2, v4, Lc6;->P:F

    goto :goto_1

    .line 10
    :cond_4
    iget v1, v1, Lq6;->g:I

    int-to-float v1, v1

    .line 11
    iget v2, v4, Lc6;->P:F

    mul-float v1, v1, v2

    goto :goto_2

    .line 12
    :cond_5
    iget v1, v1, Lq6;->g:I

    int-to-float v1, v1

    .line 13
    iget v2, v4, Lc6;->P:F

    :goto_1
    div-float/2addr v1, v2

    :goto_2
    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 14
    :goto_3
    invoke-virtual {v0, v1}, Lr6;->c(I)V

    goto :goto_4

    .line 15
    :cond_6
    iget-object v1, v4, Lc6;->M:Lc6;

    if-eqz v1, :cond_7

    .line 16
    iget-object v1, v1, Lc6;->e:Lw6;

    iget-object v1, v1, Lx6;->e:Lr6;

    iget-boolean v2, v1, Lq6;->j:Z

    if-eqz v2, :cond_7

    .line 17
    iget v2, v4, Lc6;->r:F

    .line 18
    iget v1, v1, Lq6;->g:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 19
    invoke-virtual {v0, v1}, Lr6;->c(I)V

    .line 20
    :cond_7
    :goto_4
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-boolean v1, v0, Lq6;->c:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lx6;->i:Lq6;

    iget-boolean v2, v1, Lq6;->c:Z

    if-nez v2, :cond_8

    goto/16 :goto_7

    .line 21
    :cond_8
    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lq6;->j:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lx6;->e:Lr6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_9

    return-void

    .line 22
    :cond_9
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lx6;->d:Lc6$a;

    if-ne v0, p1, :cond_a

    iget-object v0, p0, Lx6;->b:Lc6;

    iget v1, v0, Lc6;->j:I

    if-nez v1, :cond_a

    .line 23
    invoke-virtual {v0}, Lc6;->y()Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-object p1, p0, Lx6;->h:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6;

    .line 25
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6;

    .line 26
    iget p1, p1, Lq6;->g:I

    iget-object v1, p0, Lx6;->h:Lq6;

    iget v2, v1, Lq6;->f:I

    add-int/2addr p1, v2

    .line 27
    iget v0, v0, Lq6;->g:I

    iget-object v2, p0, Lx6;->i:Lq6;

    iget v2, v2, Lq6;->f:I

    add-int/2addr v0, v2

    sub-int v2, v0, p1

    .line 28
    invoke-virtual {v1, p1}, Lq6;->c(I)V

    .line 29
    iget-object p1, p0, Lx6;->i:Lq6;

    invoke-virtual {p1, v0}, Lq6;->c(I)V

    .line 30
    iget-object p1, p0, Lx6;->e:Lr6;

    invoke-virtual {p1, v2}, Lr6;->c(I)V

    return-void

    .line 31
    :cond_a
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lx6;->d:Lc6$a;

    if-ne v0, p1, :cond_c

    iget p1, p0, Lx6;->a:I

    if-ne p1, v3, :cond_c

    .line 32
    iget-object p1, p0, Lx6;->h:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lx6;->i:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 33
    iget-object p1, p0, Lx6;->h:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6;

    .line 34
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6;

    .line 35
    iget p1, p1, Lq6;->g:I

    iget-object v1, p0, Lx6;->h:Lq6;

    iget v1, v1, Lq6;->f:I

    add-int/2addr p1, v1

    .line 36
    iget v0, v0, Lq6;->g:I

    iget-object v1, p0, Lx6;->i:Lq6;

    iget v1, v1, Lq6;->f:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 37
    iget-object p1, p0, Lx6;->e:Lr6;

    iget v1, p1, Lr6;->m:I

    if-ge v0, v1, :cond_b

    .line 38
    invoke-virtual {p1, v0}, Lr6;->c(I)V

    goto :goto_5

    .line 39
    :cond_b
    invoke-virtual {p1, v1}, Lr6;->c(I)V

    .line 40
    :cond_c
    :goto_5
    iget-object p1, p0, Lx6;->e:Lr6;

    iget-boolean p1, p1, Lq6;->j:Z

    if-nez p1, :cond_d

    return-void

    .line 41
    :cond_d
    iget-object p1, p0, Lx6;->h:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lx6;->i:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 42
    iget-object p1, p0, Lx6;->h:Lq6;

    iget-object p1, p1, Lq6;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6;

    .line 43
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6;

    .line 44
    iget v1, p1, Lq6;->g:I

    iget-object v2, p0, Lx6;->h:Lq6;

    iget v3, v2, Lq6;->f:I

    add-int/2addr v3, v1

    .line 45
    iget v4, v0, Lq6;->g:I

    iget-object v5, p0, Lx6;->i:Lq6;

    iget v5, v5, Lq6;->f:I

    add-int/2addr v5, v4

    .line 46
    iget-object v7, p0, Lx6;->b:Lc6;

    .line 47
    iget v7, v7, Lc6;->b0:F

    if-ne p1, v0, :cond_e

    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_6

    :cond_e
    move v1, v3

    move v4, v5

    :goto_6
    sub-int/2addr v4, v1

    .line 48
    iget-object p1, p0, Lx6;->e:Lr6;

    iget p1, p1, Lq6;->g:I

    sub-int/2addr v4, p1

    int-to-float p1, v1

    add-float/2addr p1, v6

    int-to-float v0, v4

    mul-float v0, v0, v7

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 49
    invoke-virtual {v2, p1}, Lq6;->c(I)V

    .line 50
    iget-object p1, p0, Lx6;->i:Lq6;

    iget-object v0, p0, Lx6;->h:Lq6;

    iget v0, v0, Lq6;->g:I

    iget-object v1, p0, Lx6;->e:Lr6;

    iget v1, v1, Lq6;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lq6;->c(I)V

    :cond_f
    :goto_7
    return-void
.end method

.method public d()V
    .locals 10

    .line 1
    sget-object v0, Lc6$a;->h:Lc6$a;

    sget-object v1, Lc6$a;->e:Lc6$a;

    sget-object v2, Lc6$a;->g:Lc6$a;

    iget-object v3, p0, Lx6;->b:Lc6;

    iget-boolean v4, v3, Lc6;->a:Z

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, p0, Lx6;->e:Lr6;

    invoke-virtual {v3}, Lc6;->n()I

    move-result v3

    invoke-virtual {v4, v3}, Lr6;->c(I)V

    .line 3
    :cond_0
    iget-object v3, p0, Lx6;->e:Lr6;

    iget-boolean v3, v3, Lq6;->j:Z

    if-nez v3, :cond_3

    .line 4
    iget-object v3, p0, Lx6;->b:Lc6;

    invoke-virtual {v3}, Lc6;->s()Lc6$a;

    move-result-object v3

    iput-object v3, p0, Lx6;->d:Lc6$a;

    .line 5
    iget-object v3, p0, Lx6;->b:Lc6;

    .line 6
    iget-boolean v3, v3, Lc6;->y:Z

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Ll6;

    invoke-direct {v3, p0}, Ll6;-><init>(Lx6;)V

    iput-object v3, p0, Lw6;->l:Lr6;

    .line 8
    :cond_1
    iget-object v3, p0, Lx6;->d:Lc6$a;

    if-eq v3, v2, :cond_4

    if-ne v3, v0, :cond_2

    .line 9
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 10
    iget-object v0, v0, Lc6;->M:Lc6;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lc6;->s()Lc6$a;

    move-result-object v3

    if-ne v3, v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lc6;->n()I

    move-result v1

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->B:Lb6;

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->D:Lb6;

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 13
    iget-object v2, p0, Lx6;->h:Lq6;

    iget-object v3, v0, Lc6;->e:Lw6;

    iget-object v3, v3, Lx6;->h:Lq6;

    iget-object v4, p0, Lx6;->b:Lc6;

    iget-object v4, v4, Lc6;->B:Lb6;

    invoke-virtual {v4}, Lb6;->c()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lx6;->b(Lq6;Lq6;I)V

    .line 14
    iget-object v2, p0, Lx6;->i:Lq6;

    iget-object v0, v0, Lc6;->e:Lw6;

    iget-object v0, v0, Lx6;->i:Lq6;

    iget-object v3, p0, Lx6;->b:Lc6;

    iget-object v3, v3, Lc6;->D:Lb6;

    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lx6;->b(Lq6;Lq6;I)V

    .line 15
    iget-object v0, p0, Lx6;->e:Lr6;

    invoke-virtual {v0, v1}, Lr6;->c(I)V

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lx6;->d:Lc6$a;

    if-ne v0, v1, :cond_4

    .line 17
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-object v1, p0, Lx6;->b:Lc6;

    invoke-virtual {v1}, Lc6;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lr6;->c(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v3, p0, Lx6;->d:Lc6$a;

    if-ne v3, v0, :cond_4

    .line 19
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 20
    iget-object v0, v0, Lc6;->M:Lc6;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Lc6;->s()Lc6$a;

    move-result-object v3

    if-ne v3, v1, :cond_4

    .line 22
    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, v0, Lc6;->e:Lw6;

    iget-object v2, v2, Lx6;->h:Lq6;

    iget-object v3, p0, Lx6;->b:Lc6;

    iget-object v3, v3, Lc6;->B:Lb6;

    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lx6;->b(Lq6;Lq6;I)V

    .line 23
    iget-object v1, p0, Lx6;->i:Lq6;

    iget-object v0, v0, Lc6;->e:Lw6;

    iget-object v0, v0, Lx6;->i:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->D:Lb6;

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lx6;->b(Lq6;Lq6;I)V

    return-void

    .line 24
    :cond_4
    :goto_0
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-boolean v1, v0, Lq6;->j:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v1, :cond_d

    iget-object v8, p0, Lx6;->b:Lc6;

    iget-boolean v9, v8, Lc6;->a:Z

    if-eqz v9, :cond_d

    .line 25
    iget-object v0, v8, Lc6;->I:[Lb6;

    aget-object v1, v0, v6

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_8

    aget-object v1, v0, v7

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v8}, Lc6;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->I:[Lb6;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    iput v1, v0, Lq6;->f:I

    .line 28
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->I:[Lb6;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lq6;->f:I

    goto :goto_1

    .line 29
    :cond_5
    iget-object v0, p0, Lx6;->b:Lc6;

    iget-object v0, v0, Lc6;->I:[Lb6;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 30
    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->I:[Lb6;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    .line 31
    iget-object v3, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iput v2, v1, Lq6;->f:I

    .line 33
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_6
    iget-object v0, p0, Lx6;->b:Lc6;

    iget-object v0, v0, Lc6;->I:[Lb6;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 35
    iget-object v1, p0, Lx6;->i:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->I:[Lb6;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    .line 36
    iget-object v3, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iput v2, v1, Lq6;->f:I

    .line 38
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_7
    iget-object v0, p0, Lx6;->h:Lq6;

    iput-boolean v5, v0, Lq6;->b:Z

    .line 40
    iget-object v0, p0, Lx6;->i:Lq6;

    iput-boolean v5, v0, Lq6;->b:Z

    .line 41
    :goto_1
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 42
    iget-boolean v1, v0, Lc6;->y:Z

    if-eqz v1, :cond_1e

    .line 43
    iget-object v1, p0, Lw6;->k:Lq6;

    iget-object v2, p0, Lx6;->h:Lq6;

    .line 44
    iget v0, v0, Lc6;->X:I

    .line 45
    invoke-virtual {p0, v1, v2, v0}, Lx6;->b(Lq6;Lq6;I)V

    goto/16 :goto_5

    .line 46
    :cond_8
    aget-object v1, v0, v6

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_9

    .line 47
    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 48
    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->I:[Lb6;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    .line 49
    iget-object v3, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iput v2, v1, Lq6;->f:I

    .line 51
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lx6;->e:Lr6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Lq6;Lq6;I)V

    .line 53
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 54
    iget-boolean v1, v0, Lc6;->y:Z

    if-eqz v1, :cond_1e

    .line 55
    iget-object v1, p0, Lw6;->k:Lq6;

    iget-object v2, p0, Lx6;->h:Lq6;

    .line 56
    iget v0, v0, Lc6;->X:I

    .line 57
    invoke-virtual {p0, v1, v2, v0}, Lx6;->b(Lq6;Lq6;I)V

    goto/16 :goto_5

    .line 58
    :cond_9
    aget-object v1, v0, v7

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_b

    .line 59
    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 60
    iget-object v1, p0, Lx6;->i:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->I:[Lb6;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    .line 61
    iget-object v3, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iput v2, v1, Lq6;->f:I

    .line 63
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-object v1, p0, Lx6;->i:Lq6;

    iget-object v2, p0, Lx6;->e:Lr6;

    iget v2, v2, Lq6;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Lq6;Lq6;I)V

    .line 65
    :cond_a
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 66
    iget-boolean v1, v0, Lc6;->y:Z

    if-eqz v1, :cond_1e

    .line 67
    iget-object v1, p0, Lw6;->k:Lq6;

    iget-object v2, p0, Lx6;->h:Lq6;

    .line 68
    iget v0, v0, Lc6;->X:I

    .line 69
    invoke-virtual {p0, v1, v2, v0}, Lx6;->b(Lq6;Lq6;I)V

    goto/16 :goto_5

    .line 70
    :cond_b
    aget-object v1, v0, v4

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_c

    .line 71
    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 72
    iget-object v1, p0, Lw6;->k:Lq6;

    .line 73
    iget-object v2, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput v3, v1, Lq6;->f:I

    .line 75
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-object v1, p0, Lw6;->k:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    .line 77
    iget v2, v2, Lc6;->X:I

    neg-int v2, v2

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Lq6;Lq6;I)V

    .line 79
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lx6;->e:Lr6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Lq6;Lq6;I)V

    goto/16 :goto_5

    .line 80
    :cond_c
    instance-of v0, v8, Lg6;

    if-nez v0, :cond_1e

    .line 81
    iget-object v0, v8, Lc6;->M:Lc6;

    if-eqz v0, :cond_1e

    .line 82
    sget-object v0, Lb6$a;->k:Lb6$a;

    .line 83
    invoke-virtual {v8, v0}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v0

    iget-object v0, v0, Lb6;->d:Lb6;

    if-nez v0, :cond_1e

    .line 84
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 85
    iget-object v1, v0, Lc6;->M:Lc6;

    .line 86
    iget-object v1, v1, Lc6;->e:Lw6;

    iget-object v1, v1, Lx6;->h:Lq6;

    .line 87
    iget-object v2, p0, Lx6;->h:Lq6;

    invoke-virtual {v0}, Lc6;->v()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lx6;->b(Lq6;Lq6;I)V

    .line 88
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lx6;->e:Lr6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lx6;->b(Lq6;Lq6;I)V

    .line 89
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 90
    iget-boolean v1, v0, Lc6;->y:Z

    if-eqz v1, :cond_1e

    .line 91
    iget-object v1, p0, Lw6;->k:Lq6;

    iget-object v2, p0, Lx6;->h:Lq6;

    .line 92
    iget v0, v0, Lc6;->X:I

    .line 93
    invoke-virtual {p0, v1, v2, v0}, Lx6;->b(Lq6;Lq6;I)V

    goto/16 :goto_5

    :cond_d
    if-nez v1, :cond_12

    .line 94
    iget-object v1, p0, Lx6;->d:Lc6$a;

    if-ne v1, v2, :cond_12

    .line 95
    iget-object v1, p0, Lx6;->b:Lc6;

    iget v8, v1, Lc6;->k:I

    if-eq v8, v6, :cond_10

    if-eq v8, v7, :cond_e

    goto :goto_2

    .line 96
    :cond_e
    invoke-virtual {v1}, Lc6;->y()Z

    move-result v0

    if-nez v0, :cond_13

    .line 97
    iget-object v0, p0, Lx6;->b:Lc6;

    iget v1, v0, Lc6;->j:I

    if-ne v1, v7, :cond_f

    goto :goto_2

    .line 98
    :cond_f
    iget-object v0, v0, Lc6;->d:Lu6;

    iget-object v0, v0, Lx6;->e:Lr6;

    .line 99
    iget-object v1, p0, Lx6;->e:Lr6;

    iget-object v1, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lr6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lx6;->e:Lr6;

    iput-boolean v5, v0, Lq6;->b:Z

    .line 102
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Lq6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->i:Lq6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_10
    iget-object v1, v1, Lc6;->M:Lc6;

    if-nez v1, :cond_11

    goto :goto_2

    .line 105
    :cond_11
    iget-object v1, v1, Lc6;->e:Lw6;

    iget-object v1, v1, Lx6;->e:Lr6;

    .line 106
    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v1, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lr6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lx6;->e:Lr6;

    iput-boolean v5, v0, Lq6;->b:Z

    .line 109
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->h:Lq6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->i:Lq6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_12
    iget-object v1, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_13

    .line 113
    invoke-virtual {p0, p0}, Lw6;->a(Lo6;)V

    .line 114
    :cond_13
    :goto_2
    iget-object v0, p0, Lx6;->b:Lc6;

    iget-object v1, v0, Lc6;->I:[Lb6;

    aget-object v8, v1, v6

    iget-object v8, v8, Lb6;->d:Lb6;

    if-eqz v8, :cond_17

    aget-object v8, v1, v7

    iget-object v8, v8, Lb6;->d:Lb6;

    if-eqz v8, :cond_17

    .line 115
    invoke-virtual {v0}, Lc6;->y()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 116
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->I:[Lb6;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    iput v1, v0, Lq6;->f:I

    .line 117
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->I:[Lb6;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lq6;->f:I

    goto :goto_3

    .line 118
    :cond_14
    iget-object v0, p0, Lx6;->b:Lc6;

    iget-object v0, v0, Lc6;->I:[Lb6;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->I:[Lb6;

    aget-object v1, v1, v7

    invoke-virtual {p0, v1}, Lx6;->h(Lb6;)Lq6;

    move-result-object v1

    .line 120
    iget-object v2, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_15

    .line 122
    invoke-virtual {p0, p0}, Lw6;->a(Lo6;)V

    .line 123
    :cond_15
    iget-object v0, v1, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-boolean v0, v1, Lq6;->j:Z

    if-eqz v0, :cond_16

    .line 125
    invoke-virtual {p0, p0}, Lw6;->a(Lo6;)V

    .line 126
    :cond_16
    sget-object v0, Lx6$a;->h:Lx6$a;

    iput-object v0, p0, Lx6;->j:Lx6$a;

    .line 127
    :goto_3
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 128
    iget-boolean v0, v0, Lc6;->y:Z

    if-eqz v0, :cond_1d

    .line 129
    iget-object v0, p0, Lw6;->k:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lw6;->l:Lr6;

    invoke-virtual {p0, v0, v1, v5, v2}, Lx6;->c(Lq6;Lq6;ILr6;)V

    goto/16 :goto_4

    .line 130
    :cond_17
    aget-object v8, v1, v6

    iget-object v8, v8, Lb6;->d:Lb6;

    const/4 v9, 0x0

    if-eqz v8, :cond_19

    .line 131
    aget-object v0, v1, v6

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 132
    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v3, p0, Lx6;->b:Lc6;

    iget-object v3, v3, Lc6;->I:[Lb6;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    .line 133
    iget-object v4, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iput v3, v1, Lq6;->f:I

    .line 135
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v3, p0, Lx6;->e:Lr6;

    invoke-virtual {p0, v0, v1, v5, v3}, Lx6;->c(Lq6;Lq6;ILr6;)V

    .line 137
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 138
    iget-boolean v0, v0, Lc6;->y:Z

    if-eqz v0, :cond_18

    .line 139
    iget-object v0, p0, Lw6;->k:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v3, p0, Lw6;->l:Lr6;

    invoke-virtual {p0, v0, v1, v5, v3}, Lx6;->c(Lq6;Lq6;ILr6;)V

    .line 140
    :cond_18
    iget-object v0, p0, Lx6;->d:Lc6$a;

    if-ne v0, v2, :cond_1d

    .line 141
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 142
    iget v1, v0, Lc6;->P:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1d

    .line 143
    iget-object v0, v0, Lc6;->d:Lu6;

    iget-object v1, v0, Lx6;->d:Lc6$a;

    if-ne v1, v2, :cond_1d

    .line 144
    iget-object v0, v0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lr6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->d:Lu6;

    iget-object v1, v1, Lx6;->e:Lr6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lx6;->e:Lr6;

    iput-object p0, v0, Lq6;->a:Lo6;

    goto/16 :goto_4

    .line 147
    :cond_19
    aget-object v6, v1, v7

    iget-object v6, v6, Lb6;->d:Lb6;

    const/4 v8, -0x1

    if-eqz v6, :cond_1a

    .line 148
    aget-object v0, v1, v7

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 149
    iget-object v1, p0, Lx6;->i:Lq6;

    iget-object v2, p0, Lx6;->b:Lc6;

    iget-object v2, v2, Lc6;->I:[Lb6;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    .line 150
    iget-object v3, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iput v2, v1, Lq6;->f:I

    .line 152
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-object v1, p0, Lx6;->i:Lq6;

    iget-object v2, p0, Lx6;->e:Lr6;

    invoke-virtual {p0, v0, v1, v8, v2}, Lx6;->c(Lq6;Lq6;ILr6;)V

    .line 154
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 155
    iget-boolean v0, v0, Lc6;->y:Z

    if-eqz v0, :cond_1d

    .line 156
    iget-object v0, p0, Lw6;->k:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lw6;->l:Lr6;

    invoke-virtual {p0, v0, v1, v5, v2}, Lx6;->c(Lq6;Lq6;ILr6;)V

    goto/16 :goto_4

    .line 157
    :cond_1a
    aget-object v6, v1, v4

    iget-object v6, v6, Lb6;->d:Lb6;

    if-eqz v6, :cond_1b

    .line 158
    aget-object v0, v1, v4

    invoke-virtual {p0, v0}, Lx6;->h(Lb6;)Lq6;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 159
    iget-object v1, p0, Lw6;->k:Lq6;

    .line 160
    iget-object v2, v1, Lq6;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iput v3, v1, Lq6;->f:I

    .line 162
    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-object v1, p0, Lw6;->k:Lq6;

    iget-object v2, p0, Lw6;->l:Lr6;

    invoke-virtual {p0, v0, v1, v8, v2}, Lx6;->c(Lq6;Lq6;ILr6;)V

    .line 164
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v2, p0, Lx6;->e:Lr6;

    invoke-virtual {p0, v0, v1, v5, v2}, Lx6;->c(Lq6;Lq6;ILr6;)V

    goto :goto_4

    .line 165
    :cond_1b
    instance-of v1, v0, Lg6;

    if-nez v1, :cond_1d

    .line 166
    iget-object v1, v0, Lc6;->M:Lc6;

    if-eqz v1, :cond_1d

    .line 167
    iget-object v1, v1, Lc6;->e:Lw6;

    iget-object v1, v1, Lx6;->h:Lq6;

    .line 168
    iget-object v3, p0, Lx6;->h:Lq6;

    invoke-virtual {v0}, Lc6;->v()I

    move-result v0

    invoke-virtual {p0, v3, v1, v0}, Lx6;->b(Lq6;Lq6;I)V

    .line 169
    iget-object v0, p0, Lx6;->i:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v3, p0, Lx6;->e:Lr6;

    invoke-virtual {p0, v0, v1, v5, v3}, Lx6;->c(Lq6;Lq6;ILr6;)V

    .line 170
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 171
    iget-boolean v0, v0, Lc6;->y:Z

    if-eqz v0, :cond_1c

    .line 172
    iget-object v0, p0, Lw6;->k:Lq6;

    iget-object v1, p0, Lx6;->h:Lq6;

    iget-object v3, p0, Lw6;->l:Lr6;

    invoke-virtual {p0, v0, v1, v5, v3}, Lx6;->c(Lq6;Lq6;ILr6;)V

    .line 173
    :cond_1c
    iget-object v0, p0, Lx6;->d:Lc6$a;

    if-ne v0, v2, :cond_1d

    .line 174
    iget-object v0, p0, Lx6;->b:Lc6;

    .line 175
    iget v1, v0, Lc6;->P:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1d

    .line 176
    iget-object v0, v0, Lc6;->d:Lu6;

    iget-object v1, v0, Lx6;->d:Lc6$a;

    if-ne v1, v2, :cond_1d

    .line 177
    iget-object v0, v0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->k:Ljava/util/List;

    iget-object v1, p0, Lx6;->e:Lr6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    iget-object v1, p0, Lx6;->b:Lc6;

    iget-object v1, v1, Lc6;->d:Lu6;

    iget-object v1, v1, Lx6;->e:Lr6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lx6;->e:Lr6;

    iput-object p0, v0, Lq6;->a:Lo6;

    .line 180
    :cond_1d
    :goto_4
    iget-object v0, p0, Lx6;->e:Lr6;

    iget-object v0, v0, Lq6;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 181
    iget-object v0, p0, Lx6;->e:Lr6;

    iput-boolean v5, v0, Lq6;->c:Z

    :cond_1e
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx6;->h:Lq6;

    iget-boolean v1, v0, Lq6;->j:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lx6;->b:Lc6;

    iget v0, v0, Lq6;->g:I

    .line 3
    iput v0, v1, Lc6;->S:I

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx6;->c:Lv6;

    .line 2
    iget-object v0, p0, Lx6;->h:Lq6;

    invoke-virtual {v0}, Lq6;->b()V

    .line 3
    iget-object v0, p0, Lx6;->i:Lq6;

    invoke-virtual {v0}, Lq6;->b()V

    .line 4
    iget-object v0, p0, Lw6;->k:Lq6;

    invoke-virtual {v0}, Lq6;->b()V

    .line 5
    iget-object v0, p0, Lx6;->e:Lr6;

    invoke-virtual {v0}, Lq6;->b()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lx6;->g:Z

    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lx6;->d:Lc6$a;

    sget-object v1, Lc6$a;->g:Lc6$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lx6;->b:Lc6;

    iget v0, v0, Lc6;->k:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lx6;->g:Z

    .line 2
    iget-object v1, p0, Lx6;->h:Lq6;

    invoke-virtual {v1}, Lq6;->b()V

    .line 3
    iget-object v1, p0, Lx6;->h:Lq6;

    iput-boolean v0, v1, Lq6;->j:Z

    .line 4
    iget-object v1, p0, Lx6;->i:Lq6;

    invoke-virtual {v1}, Lq6;->b()V

    .line 5
    iget-object v1, p0, Lx6;->i:Lq6;

    iput-boolean v0, v1, Lq6;->j:Z

    .line 6
    iget-object v1, p0, Lw6;->k:Lq6;

    invoke-virtual {v1}, Lq6;->b()V

    .line 7
    iget-object v1, p0, Lw6;->k:Lq6;

    iput-boolean v0, v1, Lq6;->j:Z

    .line 8
    iget-object v1, p0, Lx6;->e:Lr6;

    iput-boolean v0, v1, Lq6;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "VerticalRun "

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx6;->b:Lc6;

    .line 2
    iget-object v1, v1, Lc6;->f0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
