.class public Lz5;
.super Lh6;
.source "SourceFile"


# instance fields
.field public E0:I

.field public F0:Z

.field public G0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lh6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lz5;->E0:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lz5;->F0:Z

    .line 4
    iput v0, p0, Lz5;->G0:I

    return-void
.end method


# virtual methods
.method public d(Lu5;)V
    .locals 14

    .line 1
    sget-object v0, Lc6$a;->g:Lc6$a;

    iget-object v1, p0, Lc6;->I:[Lb6;

    iget-object v2, p0, Lc6;->A:Lb6;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    iget-object v2, p0, Lc6;->B:Lb6;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 3
    iget-object v2, p0, Lc6;->C:Lb6;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 4
    iget-object v2, p0, Lc6;->D:Lb6;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lc6;->I:[Lb6;

    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 6
    aget-object v7, v2, v1

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v2

    iput-object v2, v7, Lb6;->g:Lx5;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lz5;->E0:I

    if-ltz v1, :cond_19

    const/4 v7, 0x4

    if-ge v1, v7, :cond_19

    .line 8
    aget-object v1, v2, v1

    const/4 v2, 0x0

    .line 9
    :goto_1
    iget v8, p0, Lh6;->D0:I

    if-ge v2, v8, :cond_6

    .line 10
    iget-object v8, p0, Lh6;->C0:[Lc6;

    aget-object v8, v8, v2

    .line 11
    iget-boolean v9, p0, Lz5;->F0:Z

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lc6;->e()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    .line 12
    :cond_1
    iget v9, p0, Lz5;->E0:I

    if-eqz v9, :cond_2

    if-ne v9, v5, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v8}, Lc6;->o()Lc6$a;

    move-result-object v9

    if-ne v9, v0, :cond_3

    iget-object v9, v8, Lc6;->A:Lb6;

    iget-object v9, v9, Lb6;->d:Lb6;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lc6;->C:Lb6;

    iget-object v9, v9, Lb6;->d:Lb6;

    if-eqz v9, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget v9, p0, Lz5;->E0:I

    if-eq v9, v4, :cond_4

    if-ne v9, v6, :cond_5

    .line 15
    :cond_4
    invoke-virtual {v8}, Lc6;->s()Lc6$a;

    move-result-object v9

    if-ne v9, v0, :cond_5

    iget-object v9, v8, Lc6;->B:Lb6;

    iget-object v9, v9, Lb6;->d:Lb6;

    if-eqz v9, :cond_5

    iget-object v8, v8, Lc6;->D:Lb6;

    iget-object v8, v8, Lb6;->d:Lb6;

    if-eqz v8, :cond_5

    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 16
    :goto_4
    iget-object v2, p0, Lc6;->A:Lb6;

    invoke-virtual {v2}, Lb6;->e()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lc6;->C:Lb6;

    invoke-virtual {v2}, Lb6;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, 0x1

    .line 17
    :goto_6
    iget-object v8, p0, Lc6;->B:Lb6;

    invoke-virtual {v8}, Lb6;->e()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lc6;->D:Lb6;

    invoke-virtual {v8}, Lb6;->e()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v8, 0x1

    :goto_8
    if-nez v0, :cond_f

    .line 18
    iget v0, p0, Lz5;->E0:I

    if-nez v0, :cond_b

    if-nez v2, :cond_e

    :cond_b
    if-ne v0, v4, :cond_c

    if-nez v8, :cond_e

    :cond_c
    if-ne v0, v5, :cond_d

    if-nez v2, :cond_e

    :cond_d
    if-ne v0, v6, :cond_f

    if-eqz v8, :cond_f

    :cond_e
    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    const/4 v2, 0x5

    if-nez v0, :cond_10

    const/4 v2, 0x4

    :cond_10
    const/4 v0, 0x0

    .line 19
    :goto_a
    iget v8, p0, Lh6;->D0:I

    if-ge v0, v8, :cond_15

    .line 20
    iget-object v8, p0, Lh6;->C0:[Lc6;

    aget-object v8, v8, v0

    .line 21
    iget-boolean v9, p0, Lz5;->F0:Z

    if-nez v9, :cond_11

    invoke-virtual {v8}, Lc6;->e()Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_e

    .line 22
    :cond_11
    iget-object v9, v8, Lc6;->I:[Lb6;

    iget v10, p0, Lz5;->E0:I

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v9

    .line 23
    iget-object v8, v8, Lc6;->I:[Lb6;

    iget v10, p0, Lz5;->E0:I

    aget-object v11, v8, v10

    iput-object v9, v11, Lb6;->g:Lx5;

    .line 24
    aget-object v11, v8, v10

    iget-object v11, v11, Lb6;->d:Lb6;

    if-eqz v11, :cond_12

    aget-object v11, v8, v10

    iget-object v11, v11, Lb6;->d:Lb6;

    iget-object v11, v11, Lb6;->b:Lc6;

    if-ne v11, p0, :cond_12

    .line 25
    aget-object v8, v8, v10

    iget v8, v8, Lb6;->e:I

    add-int/2addr v8, v3

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    :goto_b
    if-eqz v10, :cond_14

    if-ne v10, v4, :cond_13

    goto :goto_c

    .line 26
    :cond_13
    iget-object v10, v1, Lb6;->g:Lx5;

    iget v11, p0, Lz5;->G0:I

    add-int/2addr v11, v8

    .line 27
    invoke-virtual {p1}, Lu5;->m()Ls5;

    move-result-object v12

    .line 28
    invoke-virtual {p1}, Lu5;->n()Lx5;

    move-result-object v13

    .line 29
    iput v3, v13, Lx5;->d:I

    .line 30
    invoke-virtual {v12, v10, v9, v13, v11}, Ls5;->e(Lx5;Lx5;Lx5;I)Ls5;

    .line 31
    invoke-virtual {p1, v12}, Lu5;->c(Ls5;)V

    goto :goto_d

    .line 32
    :cond_14
    :goto_c
    iget-object v10, v1, Lb6;->g:Lx5;

    iget v11, p0, Lz5;->G0:I

    sub-int/2addr v11, v8

    .line 33
    invoke-virtual {p1}, Lu5;->m()Ls5;

    move-result-object v12

    .line 34
    invoke-virtual {p1}, Lu5;->n()Lx5;

    move-result-object v13

    .line 35
    iput v3, v13, Lx5;->d:I

    .line 36
    invoke-virtual {v12, v10, v9, v13, v11}, Ls5;->f(Lx5;Lx5;Lx5;I)Ls5;

    .line 37
    invoke-virtual {p1, v12}, Lu5;->c(Ls5;)V

    .line 38
    :goto_d
    iget-object v10, v1, Lb6;->g:Lx5;

    iget v11, p0, Lz5;->G0:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v2}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 39
    :cond_15
    iget v0, p0, Lz5;->E0:I

    const/16 v1, 0x8

    if-nez v0, :cond_16

    .line 40
    iget-object v0, p0, Lc6;->C:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v2, p0, Lc6;->A:Lb6;

    iget-object v2, v2, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v2, v3, v1}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 41
    iget-object v0, p0, Lc6;->A:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->C:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v7}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 42
    iget-object v0, p0, Lc6;->A:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->A:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v3}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto/16 :goto_f

    :cond_16
    if-ne v0, v5, :cond_17

    .line 43
    iget-object v0, p0, Lc6;->A:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v2, p0, Lc6;->C:Lb6;

    iget-object v2, v2, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v2, v3, v1}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 44
    iget-object v0, p0, Lc6;->A:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->A:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v7}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 45
    iget-object v0, p0, Lc6;->A:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->C:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v3}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_f

    :cond_17
    if-ne v0, v4, :cond_18

    .line 46
    iget-object v0, p0, Lc6;->D:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v2, p0, Lc6;->B:Lb6;

    iget-object v2, v2, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v2, v3, v1}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 47
    iget-object v0, p0, Lc6;->B:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->D:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v7}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 48
    iget-object v0, p0, Lc6;->B:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->B:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v3}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_f

    :cond_18
    if-ne v0, v6, :cond_19

    .line 49
    iget-object v0, p0, Lc6;->B:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v2, p0, Lc6;->D:Lb6;

    iget-object v2, v2, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v2, v3, v1}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 50
    iget-object v0, p0, Lc6;->B:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->B:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v7}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 51
    iget-object v0, p0, Lc6;->B:Lb6;

    iget-object v0, v0, Lb6;->g:Lx5;

    iget-object v1, p0, Lc6;->M:Lc6;

    iget-object v1, v1, Lc6;->D:Lb6;

    iget-object v1, v1, Lb6;->g:Lx5;

    invoke-virtual {p1, v0, v1, v3, v3}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :cond_19
    :goto_f
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
    invoke-super {p0, p1, p2}, Lh6;->i(Lc6;Ljava/util/HashMap;)V

    .line 2
    check-cast p1, Lz5;

    .line 3
    iget p2, p1, Lz5;->E0:I

    iput p2, p0, Lz5;->E0:I

    .line 4
    iget-boolean p2, p1, Lz5;->F0:Z

    iput-boolean p2, p0, Lz5;->F0:Z

    .line 5
    iget p1, p1, Lz5;->G0:I

    iput p1, p0, Lz5;->G0:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[Barrier] "

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc6;->f0:Ljava/lang/String;

    const-string v2, " {"

    .line 3
    invoke-static {v0, v1, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lh6;->D0:I

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lh6;->C0:[Lc6;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    .line 6
    invoke-static {v0, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object v2, v2, Lc6;->f0:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 10
    invoke-static {v0, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
