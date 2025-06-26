.class public final synthetic Lg02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Ld02;

.field public final b:Lhl2;

.field public final c:Lsk2;


# direct methods
.method public constructor <init>(Ld02;Lhl2;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg02;->a:Ld02;

    iput-object p2, p0, Lg02;->b:Lhl2;

    iput-object p3, p0, Lg02;->c:Lsk2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 9

    iget-object p1, p0, Lg02;->a:Ld02;

    iget-object v0, p0, Lg02;->b:Lhl2;

    iget-object v1, p0, Lg02;->c:Lsk2;

    .line 1
    iget-object v2, p1, Ld02;->b:Landroid/content/Context;

    iget-object v3, v1, Lsk2;->t:Ljava/util/List;

    .line 2
    invoke-static {v2, v3}, Lc50;->V2(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v2

    .line 3
    iget-object v3, p1, Ld02;->c:Lmp1;

    iget-object v4, v0, Lhl2;->b:Lfl2;

    iget-object v4, v4, Lfl2;->b:Lwk2;

    .line 4
    invoke-virtual {v3, v2, v1, v4}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v3

    .line 5
    iget-boolean v4, v1, Lsk2;->Q:Z

    invoke-interface {v3, v4}, Lxw0;->g0(Z)V

    .line 6
    sget-object v4, Ly40;->y4:Lo40;

    .line 7
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lsk2;->b0:Z

    if-eqz v4, :cond_0

    .line 10
    iget-object v4, p1, Ld02;->b:Landroid/content/Context;

    .line 11
    invoke-interface {v3}, Lxw0;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzbos;->a(Landroid/content/Context;Landroid/view/View;Lsk2;)Lcom/google/android/gms/internal/ads/zzbos;

    move-result-object v4

    goto :goto_0

    .line 12
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcjr;

    iget-object v5, p1, Ld02;->b:Landroid/content/Context;

    .line 13
    invoke-interface {v3}, Lxw0;->getView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p1, Ld02;->f:Lvs2;

    invoke-interface {v7, v1}, Lvs2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/internal/util/zzad;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzad;)V

    .line 14
    :goto_0
    iget-object v5, p1, Ld02;->a:Lg51;

    new-instance v6, Lv61;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance v0, Lq41;

    .line 15
    new-instance v8, Lf02;

    invoke-direct {v8, v3}, Lf02;-><init>(Lxw0;)V

    .line 16
    invoke-static {v2}, Lc50;->k4(Lcom/google/android/gms/internal/ads/zzvt;)Luk2;

    move-result-object v2

    invoke-direct {v0, v4, v3, v8, v2}, Lq41;-><init>(Landroid/view/View;Lxw0;Lg61;Luk2;)V

    .line 17
    invoke-virtual {v5, v6, v0}, Lg51;->b(Lv61;Lq41;)Lm41;

    move-result-object v0

    .line 18
    move-object v2, v0

    check-cast v2, Le01;

    .line 19
    iget-object v2, v2, Le01;->Z0:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lop1;

    const/4 v4, 0x0

    .line 20
    invoke-virtual {v2, v3, v4, v7}, Lop1;->b(Lxw0;ZLob0;)V

    .line 21
    invoke-virtual {v0}, Lh61;->d()Lqa1;

    move-result-object v2

    new-instance v4, Li02;

    invoke-direct {v4, v3}, Li02;-><init>(Lxw0;)V

    .line 22
    sget-object v5, Lms0;->f:Lzv2;

    .line 23
    invoke-virtual {v2, v4, v5}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 24
    move-object v2, v0

    check-cast v2, Le01;

    .line 25
    iget-object v2, v2, Le01;->Z0:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lop1;

    .line 26
    iget-object v2, v1, Lsk2;->r:Lzk2;

    iget-object v4, v2, Lzk2;->b:Ljava/lang/String;

    iget-object v2, v2, Lzk2;->a:Ljava/lang/String;

    .line 27
    invoke-static {v3, v4, v2}, Lop1;->a(Lxw0;Ljava/lang/String;Ljava/lang/String;)Law2;

    move-result-object v2

    .line 28
    iget-boolean v1, v1, Lsk2;->H:Z

    if-eqz v1, :cond_1

    .line 29
    new-instance v1, Lh02;

    invoke-direct {v1, v3}, Lh02;-><init>(Lxw0;)V

    .line 30
    iget-object v4, p1, Ld02;->e:Ljava/util/concurrent/Executor;

    move-object v6, v2

    check-cast v6, Lxs0;

    .line 31
    iget-object v6, v6, Lxs0;->e:Liw2;

    invoke-virtual {v6, v1, v4}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 32
    :cond_1
    new-instance v1, Lk02;

    invoke-direct {v1, p1, v3}, Lk02;-><init>(Ld02;Lxw0;)V

    iget-object p1, p1, Ld02;->e:Ljava/util/concurrent/Executor;

    move-object v3, v2

    check-cast v3, Lxs0;

    .line 33
    iget-object v3, v3, Lxs0;->e:Liw2;

    invoke-virtual {v3, v1, p1}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    new-instance p1, Lj02;

    invoke-direct {p1, v0}, Lj02;-><init>(Lm41;)V

    .line 35
    invoke-static {v2, p1, v5}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
