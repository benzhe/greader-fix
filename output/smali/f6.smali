.class public Lf6;
.super Lc6;
.source "SourceFile"


# instance fields
.field public C0:F

.field public D0:I

.field public E0:I

.field public F0:Lb6;

.field public G0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lc6;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lf6;->C0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lf6;->D0:I

    .line 4
    iput v0, p0, Lf6;->E0:I

    .line 5
    iget-object v0, p0, Lc6;->B:Lb6;

    iput-object v0, p0, Lf6;->F0:Lb6;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lf6;->G0:I

    .line 7
    iget-object v1, p0, Lc6;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v2, p0, Lf6;->F0:Lb6;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lc6;->I:[Lb6;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Lc6;->I:[Lb6;

    iget-object v3, p0, Lf6;->F0:Lb6;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public K(Lu5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc6;->M:Lc6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf6;->F0:Lb6;

    invoke-virtual {p1, v0}, Lu5;->o(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget v0, p0, Lf6;->G0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iput p1, p0, Lc6;->R:I

    .line 5
    iput v2, p0, Lc6;->S:I

    .line 6
    iget-object p1, p0, Lc6;->M:Lc6;

    .line 7
    invoke-virtual {p1}, Lc6;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lc6;->D(I)V

    .line 8
    invoke-virtual {p0, v2}, Lc6;->I(I)V

    goto :goto_0

    .line 9
    :cond_1
    iput v2, p0, Lc6;->R:I

    .line 10
    iput p1, p0, Lc6;->S:I

    .line 11
    iget-object p1, p0, Lc6;->M:Lc6;

    .line 12
    invoke-virtual {p1}, Lc6;->t()I

    move-result p1

    invoke-virtual {p0, p1}, Lc6;->I(I)V

    .line 13
    invoke-virtual {p0, v2}, Lc6;->D(I)V

    :goto_0
    return-void
.end method

.method public L(I)V
    .locals 3

    .line 1
    iget v0, p0, Lf6;->G0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lf6;->G0:I

    .line 3
    iget-object p1, p0, Lc6;->J:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Lf6;->G0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lc6;->A:Lb6;

    iput-object p1, p0, Lf6;->F0:Lb6;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lc6;->B:Lb6;

    iput-object p1, p0, Lf6;->F0:Lb6;

    .line 7
    :goto_0
    iget-object p1, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v0, p0, Lf6;->F0:Lb6;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lc6;->I:[Lb6;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Lc6;->I:[Lb6;

    iget-object v2, p0, Lf6;->F0:Lb6;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d(Lu5;)V
    .locals 8

    .line 1
    sget-object v0, Lc6$a;->f:Lc6$a;

    iget-object v1, p0, Lc6;->M:Lc6;

    .line 2
    check-cast v1, Ld6;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v2, Lb6$a;->f:Lb6$a;

    invoke-virtual {v1, v2}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v2

    .line 4
    sget-object v3, Lb6$a;->h:Lb6$a;

    invoke-virtual {v1, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lc6;->M:Lc6;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v4, Lc6;->L:[Lc6$a;

    aget-object v4, v4, v6

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_0
    iget v7, p0, Lf6;->G0:I

    if-nez v7, :cond_3

    .line 7
    sget-object v2, Lb6$a;->g:Lb6$a;

    invoke-virtual {v1, v2}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v2

    .line 8
    sget-object v3, Lb6$a;->i:Lb6$a;

    invoke-virtual {v1, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v3

    .line 9
    iget-object v1, p0, Lc6;->M:Lc6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lc6;->L:[Lc6$a;

    aget-object v1, v1, v5

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 10
    :cond_3
    iget v0, p0, Lf6;->D0:I

    const/16 v1, 0x8

    const/4 v5, -0x1

    const/4 v7, 0x5

    if-eq v0, v5, :cond_4

    .line 11
    iget-object v0, p0, Lf6;->F0:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v2}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v2

    .line 13
    iget v5, p0, Lf6;->D0:I

    invoke-virtual {p1, v0, v2, v5, v1}, Lu5;->d(Lx5;Lx5;II)Ls5;

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {p1, v3}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v6, v7}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_2

    .line 15
    :cond_4
    iget v0, p0, Lf6;->E0:I

    if-eq v0, v5, :cond_5

    .line 16
    iget-object v0, p0, Lf6;->F0:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v3}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v3

    .line 18
    iget v5, p0, Lf6;->E0:I

    neg-int v5, v5

    invoke-virtual {p1, v0, v3, v5, v1}, Lu5;->d(Lx5;Lx5;II)Ls5;

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {p1, v2}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v6, v7}, Lu5;->f(Lx5;Lx5;II)V

    .line 20
    invoke-virtual {p1, v3, v0, v6, v7}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_2

    .line 21
    :cond_5
    iget v0, p0, Lf6;->C0:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lf6;->F0:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v3}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v2

    .line 24
    iget v3, p0, Lf6;->C0:F

    .line 25
    invoke-virtual {p1}, Lu5;->m()Ls5;

    move-result-object v4

    .line 26
    iget-object v5, v4, Ls5;->d:Ls5$a;

    invoke-interface {v5, v0, v1}, Ls5$a;->i(Lx5;F)V

    .line 27
    iget-object v0, v4, Ls5;->d:Ls5$a;

    invoke-interface {v0, v2, v3}, Ls5$a;->i(Lx5;F)V

    .line 28
    invoke-virtual {p1, v4}, Lu5;->c(Ls5;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(Lc6;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6;",
            "Ljava/util/HashMap<",
            "Lc6;",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lc6;->i(Lc6;Ljava/util/HashMap;)V

    .line 2
    check-cast p1, Lf6;

    .line 3
    iget p2, p1, Lf6;->C0:F

    iput p2, p0, Lf6;->C0:F

    .line 4
    iget p2, p1, Lf6;->D0:I

    iput p2, p0, Lf6;->D0:I

    .line 5
    iget p2, p1, Lf6;->E0:I

    iput p2, p0, Lf6;->E0:I

    .line 6
    iget p1, p1, Lf6;->G0:I

    invoke-virtual {p0, p1}, Lf6;->L(I)V

    return-void
.end method

.method public k(Lb6$a;)Lb6;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :pswitch_1
    iget v0, p0, Lf6;->G0:I

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lf6;->F0:Lb6;

    return-object p1

    .line 4
    :pswitch_2
    iget v0, p0, Lf6;->G0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Lf6;->F0:Lb6;

    return-object p1

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
