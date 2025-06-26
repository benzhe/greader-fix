.class public final Ldp1;
.super Lf61;
.source "SourceFile"


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lxw0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lwh1;

.field public final k:Lgf1;

.field public final l:Lga1;

.field public final m:Lrb1;

.field public final n:Lc71;

.field public final o:Lbo0;

.field public final p:Lar2;

.field public q:Z


# direct methods
.method public constructor <init>(Li61;Landroid/content/Context;Lxw0;Lwh1;Lgf1;Lga1;Lrb1;Lc71;Lsk2;Lar2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf61;-><init>(Li61;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ldp1;->q:Z

    .line 3
    iput-object p2, p0, Ldp1;->h:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Ldp1;->j:Lwh1;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ldp1;->i:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p5, p0, Ldp1;->k:Lgf1;

    .line 7
    iput-object p6, p0, Ldp1;->l:Lga1;

    .line 8
    iput-object p7, p0, Ldp1;->m:Lrb1;

    .line 9
    iput-object p8, p0, Ldp1;->n:Lc71;

    .line 10
    iput-object p10, p0, Ldp1;->p:Lar2;

    .line 11
    new-instance p1, Lbp0;

    iget-object p2, p9, Lsk2;->l:Lcom/google/android/gms/internal/ads/zzavy;

    if-eqz p2, :cond_0

    .line 12
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzavy;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 13
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzavy;->f:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 14
    :goto_1
    invoke-direct {p1, p3, p2}, Lbp0;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p1, p0, Ldp1;->o:Lbo0;

    return-void
.end method


# virtual methods
.method public final c(ZLandroid/app/Activity;)Z
    .locals 4

    .line 1
    sget-object v0, Ly40;->o0:Lo40;

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

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Ldp1;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 5
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Ldp1;->l:Lga1;

    .line 7
    sget-object p2, Lla1;->a:Lzd1;

    invoke-virtual {p1, p2}, Lxd1;->D0(Lzd1;)V

    .line 8
    sget-object p1, Ly40;->p0:Lo40;

    .line 9
    sget-object p2, Los3;->j:Los3;

    iget-object p2, p2, Los3;->f:Lu40;

    .line 10
    invoke-virtual {p2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Ldp1;->p:Lar2;

    iget-object p2, p0, Lf61;->a:Lhl2;

    iget-object p2, p2, Lhl2;->b:Lfl2;

    iget-object p2, p2, Lfl2;->b:Lwk2;

    iget-object p2, p2, Lwk2;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lar2;->a(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 13
    :cond_1
    iget-boolean v0, p0, Ldp1;->q:Z

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    .line 14
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Ldp1;->l:Lga1;

    sget-object p2, Ldm2;->n:Ldm2;

    const/4 v0, 0x0

    .line 16
    invoke-static {p2, v0, v0}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 17
    new-instance v0, Lja1;

    invoke-direct {v0, p2}, Lja1;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Ldp1;->q:Z

    .line 19
    iget-object v2, p0, Ldp1;->k:Lgf1;

    .line 20
    sget-object v3, Lff1;->a:Lzd1;

    invoke-virtual {v2, v3}, Lxd1;->D0(Lzd1;)V

    if-nez p2, :cond_3

    .line 21
    iget-object p2, p0, Ldp1;->h:Landroid/content/Context;

    .line 22
    :cond_3
    :try_start_0
    iget-object v2, p0, Ldp1;->j:Lwh1;

    invoke-interface {v2, p1, p2}, Lwh1;->a(ZLandroid/content/Context;)V

    .line 23
    iget-object p1, p0, Ldp1;->k:Lgf1;

    .line 24
    sget-object p2, Lif1;->a:Lzd1;

    invoke-virtual {p1, p2}, Lxd1;->D0(Lzd1;)V
    :try_end_0
    .catch Lvh1; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 25
    iget-object p2, p0, Ldp1;->l:Lga1;

    .line 26
    new-instance v0, Lia1;

    invoke-direct {v0, p1}, Lia1;-><init>(Lvh1;)V

    invoke-virtual {p2, v0}, Lxd1;->D0(Lzd1;)V

    return v1
.end method

.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ldp1;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw0;

    .line 2
    sget-object v1, Ly40;->k4:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-boolean v1, p0, Ldp1;->q:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lms0;->e:Lzv2;

    .line 8
    new-instance v2, Lcp1;

    invoke-direct {v2, v0}, Lcp1;-><init>(Lxw0;)V

    .line 9
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lxw0;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 13
    throw v0
.end method
