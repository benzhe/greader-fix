.class public final Lzt1;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lpc0;


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:Lxs0;

.field public final synthetic i:Lmt1;


# direct methods
.method public constructor <init>(Lmt1;Ljava/lang/Object;Ljava/lang/String;JLxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzt1;->i:Lmt1;

    iput-object p2, p0, Lzt1;->e:Ljava/lang/Object;

    iput-object p3, p0, Lzt1;->f:Ljava/lang/String;

    iput-wide p4, p0, Lzt1;->g:J

    iput-object p6, p0, Lzt1;->h:Lxs0;

    const-string p1, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback"

    .line 2
    invoke-direct {p0, p1}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lzt1;->onInitializationFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lzt1;->onInitializationSucceeded()V

    .line 4
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final onInitializationFailed(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lzt1;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzt1;->i:Lmt1;

    iget-object v2, p0, Lzt1;->f:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v4

    invoke-interface {v4}, Lb20;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lzt1;->g:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 4
    invoke-static {v1, v2, v3, p1, v5}, Lmt1;->a(Lmt1;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lzt1;->i:Lmt1;

    .line 6
    iget-object p1, p1, Lmt1;->l:Lws1;

    .line 7
    iget-object v1, p0, Lzt1;->f:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lws1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lzt1;->i:Lmt1;

    .line 9
    iget-object p1, p1, Lmt1;->o:Lye1;

    .line 10
    iget-object v1, p0, Lzt1;->f:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lye1;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lzt1;->h:Lxs0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onInitializationSucceeded()V
    .locals 9

    .line 1
    iget-object v0, p0, Lzt1;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzt1;->i:Lmt1;

    iget-object v2, p0, Lzt1;->f:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v5

    invoke-interface {v5}, Lb20;->b()J

    move-result-wide v5

    iget-wide v7, p0, Lzt1;->g:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    .line 4
    invoke-static {v1, v2, v3, v4, v6}, Lmt1;->a(Lmt1;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lzt1;->i:Lmt1;

    .line 6
    iget-object v1, v1, Lmt1;->l:Lws1;

    .line 7
    iget-object v2, p0, Lzt1;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lws1;->d(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lzt1;->i:Lmt1;

    .line 9
    iget-object v1, v1, Lmt1;->o:Lye1;

    .line 10
    iget-object v2, p0, Lzt1;->f:Ljava/lang/String;

    .line 11
    new-instance v3, Laf1;

    invoke-direct {v3, v2}, Laf1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lxd1;->D0(Lzd1;)V

    .line 12
    iget-object v1, p0, Lzt1;->h:Lxs0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
