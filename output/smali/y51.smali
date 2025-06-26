.class public final Ly51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva1;
.implements Lob1;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lxw0;

.field public final g:Lsk2;

.field public final h:Lcom/google/android/gms/internal/ads/zzbar;

.field public i:Lx20;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxw0;Lsk2;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly51;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ly51;->f:Lxw0;

    .line 4
    iput-object p3, p0, Ly51;->g:Lsk2;

    .line 5
    iput-object p4, p0, Ly51;->h:Lcom/google/android/gms/internal/ads/zzbar;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly51;->g:Lsk2;

    iget-boolean v0, v0, Lsk2;->N:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Ly51;->f:Lxw0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    iget-object v1, p0, Ly51;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lrk0;->e(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Ly51;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbar;->f:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v0, p0, Ly51;->g:Lsk2;

    iget-object v0, v0, Lsk2;->P:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 9
    sget-object v0, Ly40;->V2:Lo40;

    .line 10
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Ly51;->g:Lsk2;

    iget-object v0, v0, Lsk2;->P:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v2, :cond_3

    .line 14
    sget-object v0, Lsk0;->h:Lsk0;

    .line 15
    sget-object v2, Luk0;->g:Luk0;

    :goto_0
    move-object v11, v0

    move-object v10, v2

    goto :goto_1

    .line 16
    :cond_3
    sget-object v0, Lsk0;->f:Lsk0;

    .line 17
    iget-object v2, p0, Ly51;->g:Lsk2;

    iget v2, v2, Lsk2;->e:I

    if-ne v2, v1, :cond_4

    .line 18
    sget-object v2, Luk0;->h:Luk0;

    goto :goto_0

    .line 19
    :cond_4
    sget-object v2, Luk0;->f:Luk0;

    goto :goto_0

    .line 20
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v4

    iget-object v0, p0, Ly51;->f:Lxw0;

    .line 21
    invoke-interface {v0}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    iget-object v0, p0, Ly51;->g:Lsk2;

    iget-object v12, v0, Lsk2;->g0:Ljava/lang/String;

    .line 22
    invoke-virtual/range {v4 .. v12}, Lrk0;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luk0;Lsk0;Ljava/lang/String;)Lx20;

    move-result-object v0

    iput-object v0, p0, Ly51;->i:Lx20;

    goto :goto_2

    .line 23
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v4

    iget-object v0, p0, Ly51;->f:Lxw0;

    .line 24
    invoke-interface {v0}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    const-string v10, "Google"

    .line 25
    invoke-virtual/range {v4 .. v10}, Lrk0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx20;

    move-result-object v0

    .line 26
    iput-object v0, p0, Ly51;->i:Lx20;

    .line 27
    :goto_2
    iget-object v0, p0, Ly51;->f:Lxw0;

    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    .line 28
    iget-object v2, p0, Ly51;->i:Lx20;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v2

    iget-object v3, p0, Ly51;->i:Lx20;

    invoke-virtual {v2, v3, v0}, Lrk0;->c(Lx20;Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Ly51;->f:Lxw0;

    iget-object v2, p0, Ly51;->i:Lx20;

    invoke-interface {v0, v2}, Lxw0;->u0(Lx20;)V

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    iget-object v2, p0, Ly51;->i:Lx20;

    invoke-virtual {v0, v2}, Lrk0;->d(Lx20;)V

    .line 32
    iput-boolean v1, p0, Ly51;->j:Z

    .line 33
    sget-object v0, Ly40;->X2:Lo40;

    .line 34
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 35
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p0, Ly51;->f:Lxw0;

    const-string v1, "onSdkLoaded"

    new-instance v2, Lf4;

    invoke-direct {v2}, Lf4;-><init>()V

    invoke-interface {v0, v1, v2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdImpression()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ly51;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ly51;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Ly51;->g:Lsk2;

    iget-boolean v0, v0, Lsk2;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly51;->i:Lx20;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly51;->f:Lxw0;

    if-eqz v0, :cond_1

    const-string v1, "onSdkImpression"

    .line 4
    new-instance v2, Lf4;

    invoke-direct {v2}, Lf4;-><init>()V

    invoke-interface {v0, v1, v2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ly51;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ly51;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
