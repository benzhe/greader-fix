.class public final Lzp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lzp0;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzp0;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lzp0;->h:Z

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c0(Lfm3;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lfm3;->j:Z

    invoke-virtual {p0, p1}, Lzp0;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcq0;

    move-result-object v0

    iget-object v1, p0, Lzp0;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lzp0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lzp0;->h:Z

    if-ne v1, p1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iput-boolean p1, p0, Lzp0;->h:Z

    .line 6
    iget-object p1, p0, Lzp0;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    iget-boolean p1, p0, Lzp0;->h:Z

    if-eqz p1, :cond_5

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcq0;

    move-result-object p1

    iget-object v1, p0, Lzp0;->e:Landroid/content/Context;

    iget-object v2, p0, Lzp0;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v1}, Lcq0;->i(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "beginAdUnitExposure"

    if-eqz v3, :cond_4

    .line 12
    new-instance v1, Lhq0;

    invoke-direct {v1, v2}, Lhq0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v1}, Lcq0;->f(Ljava/lang/String;Lcq0$a;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1, v1, v2, v4}, Lcq0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcq0;

    move-result-object p1

    iget-object v1, p0, Lzp0;->e:Landroid/content/Context;

    iget-object v2, p0, Lzp0;->g:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1}, Lcq0;->h(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {v1}, Lcq0;->i(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "endAdUnitExposure"

    if-eqz v3, :cond_7

    .line 17
    new-instance v1, Lkq0;

    invoke-direct {v1, v2}, Lkq0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v1}, Lcq0;->f(Ljava/lang/String;Lcq0$a;)V

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p1, v1, v2, v4}, Lcq0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
