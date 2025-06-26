.class public final Ll41;
.super Lj41;
.source "SourceFile"


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Landroid/view/View;

.field public final j:Lxw0;

.field public final k:Luk2;

.field public final l:Lg61;

.field public final m:Ldk1;

.field public final n:Lwf1;

.field public final o:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lq52;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/Executor;

.field public q:Lcom/google/android/gms/internal/ads/zzvt;


# direct methods
.method public constructor <init>(Li61;Landroid/content/Context;Luk2;Landroid/view/View;Lxw0;Lg61;Ldk1;Lwf1;Lxa3;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li61;",
            "Landroid/content/Context;",
            "Luk2;",
            "Landroid/view/View;",
            "Lxw0;",
            "Lg61;",
            "Ldk1;",
            "Lwf1;",
            "Lxa3<",
            "Lq52;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lj41;-><init>(Li61;)V

    .line 2
    iput-object p2, p0, Ll41;->h:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Ll41;->i:Landroid/view/View;

    .line 4
    iput-object p5, p0, Ll41;->j:Lxw0;

    .line 5
    iput-object p3, p0, Ll41;->k:Luk2;

    .line 6
    iput-object p6, p0, Ll41;->l:Lg61;

    .line 7
    iput-object p7, p0, Ll41;->m:Ldk1;

    .line 8
    iput-object p8, p0, Ll41;->n:Lwf1;

    .line 9
    iput-object p9, p0, Ll41;->o:Lxa3;

    .line 10
    iput-object p10, p0, Ll41;->p:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll41;->p:Ljava/util/concurrent/Executor;

    new-instance v1, Lo41;

    invoke-direct {v1, p0}, Lo41;-><init>(Ll41;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lf61;->b()V

    return-void
.end method

.method public final c()Lsu3;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ll41;->l:Lg61;

    invoke-interface {v0}, Lg61;->getVideoController()Lsu3;

    move-result-object v0
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ll41;->j:Lxw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Ljy0;->c(Lcom/google/android/gms/internal/ads/zzvt;)Ljy0;

    move-result-object v1

    invoke-interface {v0, v1}, Lxw0;->J(Ljy0;)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvt;->g:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 4
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvt;->j:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 5
    iput-object p2, p0, Ll41;->q:Lcom/google/android/gms/internal/ads/zzvt;

    :cond_0
    return-void
.end method

.method public final e()Luk2;
    .locals 4

    .line 1
    iget-object v0, p0, Ll41;->q:Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc50;->k4(Lcom/google/android/gms/internal/ads/zzvt;)Luk2;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf61;->b:Lsk2;

    iget-boolean v1, v0, Lsk2;->W:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    iget-object v0, v0, Lsk2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "FirstParty"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 6
    new-instance v0, Luk2;

    iget-object v1, p0, Ll41;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Ll41;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Luk2;-><init>(IIZ)V

    return-object v0

    .line 7
    :cond_3
    iget-object v0, p0, Lf61;->b:Lsk2;

    iget-object v0, v0, Lsk2;->q:Ljava/util/List;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk2;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ll41;->i:Landroid/view/View;

    return-object v0
.end method

.method public final g()Luk2;
    .locals 1

    .line 1
    iget-object v0, p0, Ll41;->k:Luk2;

    return-object v0
.end method

.method public final h()I
    .locals 2

    .line 1
    sget-object v0, Ly40;->y4:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf61;->b:Lsk2;

    iget-boolean v0, v0, Lsk2;->b0:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Ly40;->z4:Lo40;

    .line 6
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lf61;->a:Lhl2;

    iget-object v0, v0, Lhl2;->b:Lfl2;

    iget-object v0, v0, Lfl2;->b:Lwk2;

    iget v0, v0, Lwk2;->c:I

    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll41;->n:Lwf1;

    invoke-virtual {v0}, Lwf1;->G0()V

    return-void
.end method
