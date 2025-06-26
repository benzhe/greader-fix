.class public final synthetic Lbe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lyd0;

.field public final f:Ld23;

.field public final g:Lse0;


# direct methods
.method public constructor <init>(Lyd0;Ld23;Lse0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe0;->e:Lyd0;

    iput-object p2, p0, Lbe0;->f:Ld23;

    iput-object p3, p0, Lbe0;->g:Lse0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lbe0;->e:Lyd0;

    iget-object v1, p0, Lbe0;->f:Ld23;

    iget-object v2, p0, Lbe0;->g:Lse0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v3, v0, Lyd0;->b:Landroid/content/Context;

    iget-object v4, v0, Lyd0;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 3
    new-instance v5, Lrd0;

    invoke-direct {v5, v3, v4, v1}, Lrd0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ld23;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v3, Lce0;

    invoke-direct {v3, v0, v2, v5}, Lce0;-><init>(Lyd0;Lse0;Lpd0;)V

    .line 5
    iget-object v4, v5, Lrd0;->e:Lxw0;

    invoke-interface {v4}, Lxw0;->I()Lhy0;

    move-result-object v4

    .line 6
    new-instance v6, Lxd0;

    invoke-direct {v6, v3}, Lxd0;-><init>(Lce0;)V

    .line 7
    check-cast v4, Lww0;

    .line 8
    iput-object v6, v4, Lww0;->l:Liy0;

    .line 9
    new-instance v3, Lhe0;

    invoke-direct {v3, v0, v2, v5}, Lhe0;-><init>(Lyd0;Lse0;Lpd0;)V

    .line 10
    iget-object v4, v5, Lrd0;->e:Lxw0;

    new-instance v6, Lwd0;

    invoke-direct {v6, v5, v3}, Lwd0;-><init>(Lrd0;Lkb0;)V

    const-string v3, "/jsLoaded"

    invoke-interface {v4, v3, v6}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 11
    new-instance v3, Lcom/google/android/gms/ads/internal/util/zzbs;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/util/zzbs;-><init>()V

    .line 12
    new-instance v4, Lge0;

    invoke-direct {v4, v0, v1, v5, v3}, Lge0;-><init>(Lyd0;Ld23;Lpd0;Lcom/google/android/gms/ads/internal/util/zzbs;)V

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/internal/util/zzbs;->set(Ljava/lang/Object;)V

    .line 14
    iget-object v1, v5, Lrd0;->e:Lxw0;

    new-instance v3, Lwd0;

    invoke-direct {v3, v5, v4}, Lwd0;-><init>(Lrd0;Lkb0;)V

    const-string v4, "/requestReload"

    invoke-interface {v1, v4, v3}, Lxw0;->o(Ljava/lang/String;Lkb0;)V

    .line 15
    iget-object v1, v0, Lyd0;->c:Ljava/lang/String;

    const-string v3, ".js"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, v0, Lyd0;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 17
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v3, Ltd0;

    invoke-direct {v3, v5, v1}, Ltd0;-><init>(Lrd0;Ljava/lang/String;)V

    invoke-static {v3}, Lrd0;->t(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v0, Lyd0;->c:Ljava/lang/String;

    const-string v3, "<html>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, v0, Lyd0;->c:Ljava/lang/String;

    .line 21
    new-instance v3, Lsd0;

    invoke-direct {v3, v5, v1}, Lsd0;-><init>(Lrd0;Ljava/lang/String;)V

    invoke-static {v3}, Lrd0;->t(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v0, Lyd0;->c:Ljava/lang/String;

    .line 23
    new-instance v3, Lvd0;

    invoke-direct {v3, v5, v1}, Lvd0;-><init>(Lrd0;Ljava/lang/String;)V

    invoke-static {v3}, Lrd0;->t(Ljava/lang/Runnable;)V

    .line 24
    :goto_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v3, Lje0;

    invoke-direct {v3, v0, v2, v5}, Lje0;-><init>(Lyd0;Lse0;Lpd0;)V

    const v0, 0xea60

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "Error creating webview."

    .line 25
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    .line 27
    iget-object v3, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v3, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    const-string v3, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 28
    invoke-interface {v1, v0, v3}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lat0;->b()V

    :goto_1
    return-void
.end method
