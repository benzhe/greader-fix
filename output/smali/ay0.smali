.class public Lay0;
.super Lww0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxw0;Lep3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lww0;-><init>(Lxw0;Lep3;Z)V

    return-void
.end method


# virtual methods
.method public final Z(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lxw0;

    if-nez v0, :cond_0

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lxw0;

    .line 4
    iget-object v0, p0, Lww0;->w:Lnp0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p2, p3, v1}, Lnp0;->c(Ljava/lang/String;Ljava/util/Map;I)V

    .line 6
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mraid.js"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_2

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 9
    :cond_2
    invoke-virtual {p0, p2, p3}, Lww0;->U(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 11
    invoke-interface {p1}, Lxw0;->I()Lhy0;

    move-result-object p2

    check-cast p2, Lww0;

    .line 12
    iget-object p3, p2, Lww0;->h:Ljava/lang/Object;

    monitor-enter p3

    const/4 v0, 0x0

    .line 13
    :try_start_0
    iput-boolean v0, p2, Lww0;->o:Z

    .line 14
    iput-boolean v1, p2, Lww0;->p:Z

    .line 15
    sget-object v0, Lms0;->e:Lzv2;

    new-instance v1, Lzw0;

    invoke-direct {v1, p2}, Lzw0;-><init>(Lww0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 16
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_4
    :goto_0
    invoke-interface {p1}, Lxw0;->c()Ljy0;

    move-result-object p2

    invoke-virtual {p2}, Ljy0;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    sget-object p2, Ly40;->H:Lo40;

    .line 19
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 20
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {p1}, Lxw0;->E0()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    sget-object p2, Ly40;->G:Lo40;

    .line 24
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 25
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_6
    sget-object p2, Ly40;->F:Lo40;

    .line 28
    sget-object p3, Los3;->j:Los3;

    iget-object p3, p3, Los3;->f:Lu40;

    .line 29
    invoke-virtual {p3, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/String;

    .line 31
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    .line 32
    invoke-interface {p1}, Lxw0;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lxw0;->b()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 33
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
