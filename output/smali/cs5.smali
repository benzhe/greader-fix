.class public final synthetic Lcs5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfs5;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lfs5;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcs5;->e:Lfs5;

    iput-object p2, p0, Lcs5;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcs5;->e:Lfs5;

    iget-object v2, v0, Lcs5;->f:Ljava/util/List;

    .line 1
    sget v3, Lfs5;->l:I

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgs5;

    .line 3
    iget v4, v3, Lgs5;->a:I

    .line 4
    iget-object v5, v1, Lfs5;->f:Lys5;

    .line 5
    iget-object v6, v3, Lgs5;->c:Lln5;

    .line 6
    invoke-virtual {v5, v6, v4}, Lys5;->b(Lln5;I)V

    .line 7
    iget-object v5, v3, Lgs5;->d:Lln5;

    .line 8
    invoke-virtual {v5}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    move-object v7, v6

    check-cast v7, Lln5$a;

    invoke-virtual {v7}, Lln5$a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbu5;

    .line 9
    iget-object v8, v1, Lfs5;->a:Lts5;

    invoke-virtual {v8}, Lts5;->c()Lxs5;

    move-result-object v8

    invoke-interface {v8, v7}, Lxs5;->i(Lbu5;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v6, v1, Lfs5;->f:Lys5;

    invoke-virtual {v6, v5, v4}, Lys5;->f(Lln5;I)V

    .line 11
    iget-boolean v3, v3, Lgs5;->b:Z

    if-nez v3, :cond_0

    .line 12
    iget-object v3, v1, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lut5;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    new-array v6, v6, [Ljava/lang/Object;

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    const-string v5, "Can\'t set limbo-free snapshot version for unknown target: %s"

    .line 14
    invoke-static {v7, v5, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v15, v3, Lut5;->e:Lju5;

    .line 16
    new-instance v5, Lut5;

    iget-object v9, v3, Lut5;->a:Ldr5;

    iget v10, v3, Lut5;->b:I

    iget-wide v11, v3, Lut5;->c:J

    iget-object v13, v3, Lut5;->d:Lvs5;

    iget-object v3, v3, Lut5;->g:Lqi6;

    move-object v8, v5

    move-object v14, v15

    move-object/from16 v16, v3

    invoke-direct/range {v8 .. v16}, Lut5;-><init>(Ldr5;IJLvs5;Lju5;Lju5;Lqi6;)V

    .line 17
    iget-object v3, v1, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method
