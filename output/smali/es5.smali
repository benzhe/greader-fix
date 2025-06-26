.class public final synthetic Les5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfs5;

.field public final f:I


# direct methods
.method public constructor <init>(Lfs5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Les5;->e:Lfs5;

    iput p2, p0, Les5;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Les5;->e:Lfs5;

    iget v1, p0, Les5;->f:I

    .line 1
    iget-object v2, v0, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lut5;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "Tried to release nonexistent target: %s"

    invoke-static {v5, v3, v4}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v3, v0, Lfs5;->f:Lys5;

    .line 4
    invoke-virtual {v3, v1}, Lys5;->g(I)Lln5;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    move-object v4, v3

    check-cast v4, Lln5$a;

    invoke-virtual {v4}, Lln5$a;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbu5;

    .line 6
    iget-object v5, v0, Lfs5;->a:Lts5;

    invoke-virtual {v5}, Lts5;->c()Lxs5;

    move-result-object v5

    invoke-interface {v5, v4}, Lxs5;->i(Lbu5;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Lfs5;->a:Lts5;

    invoke-virtual {v3}, Lts5;->c()Lxs5;

    move-result-object v3

    invoke-interface {v3, v2}, Lxs5;->f(Lut5;)V

    .line 8
    iget-object v3, v0, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    iget-object v0, v0, Lfs5;->i:Ljava/util/Map;

    .line 10
    iget-object v1, v2, Lut5;->a:Ldr5;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
