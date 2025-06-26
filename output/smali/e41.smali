.class public final Le41;
.super Lf61;
.source "SourceFile"


# instance fields
.field public final h:Lxw0;

.field public final i:I

.field public final j:Landroid/content/Context;

.field public final k:Lm31;

.field public final l:Lwh1;

.field public m:Z


# direct methods
.method public constructor <init>(Li61;Landroid/content/Context;Lxw0;ILm31;Lwh1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf61;-><init>(Li61;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le41;->m:Z

    .line 3
    iput-object p3, p0, Le41;->h:Lxw0;

    .line 4
    iput-object p2, p0, Le41;->j:Landroid/content/Context;

    .line 5
    iput p4, p0, Le41;->i:I

    .line 6
    iput-object p5, p0, Le41;->k:Lm31;

    .line 7
    iput-object p6, p0, Le41;->l:Lwh1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lf61;->a()V

    .line 2
    iget-object v0, p0, Le41;->h:Lxw0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lxw0;->destroy()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;Ldo3;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Le41;->j:Landroid/content/Context;

    .line 2
    :cond_0
    sget-object v0, Ly40;->o0:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 6
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 7
    sget-object v0, Ldm2;->o:Ldm2;

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v3}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 9
    invoke-interface {p2, v0}, Ldo3;->G(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 10
    sget-object v0, Ly40;->p0:Lo40;

    .line 11
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 12
    invoke-virtual {v3, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lar2;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lar2;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 16
    iget-object v3, p0, Lf61;->a:Lhl2;

    iget-object v3, v3, Lhl2;->b:Lfl2;

    iget-object v3, v3, Lfl2;->b:Lwk2;

    iget-object v3, v3, Lwk2;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lar2;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v0, p0, Le41;->m:Z

    if-eqz v0, :cond_2

    const-string v0, "App open interstitial ad is already visible."

    .line 18
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-boolean v0, p0, Le41;->m:Z

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return-void

    .line 20
    :cond_4
    :try_start_0
    iget-object v0, p0, Le41;->l:Lwh1;

    invoke-interface {v0, p3, p1}, Lwh1;->a(ZLandroid/content/Context;)V
    :try_end_0
    .catch Lvh1; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iput-boolean v2, p0, Le41;->m:Z

    return-void

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lc50;->l4(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    invoke-interface {p2, p1}, Ldo3;->G(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
