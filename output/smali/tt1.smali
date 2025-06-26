.class public final synthetic Ltt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmt1;

.field public final f:Ljava/lang/Object;

.field public final g:Lxs0;

.field public final h:Ljava/lang/String;

.field public final i:J


# direct methods
.method public constructor <init>(Lmt1;Ljava/lang/Object;Lxs0;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltt1;->e:Lmt1;

    iput-object p2, p0, Ltt1;->f:Ljava/lang/Object;

    iput-object p3, p0, Ltt1;->g:Lxs0;

    iput-object p4, p0, Ltt1;->h:Ljava/lang/String;

    iput-wide p5, p0, Ltt1;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Ltt1;->e:Lmt1;

    iget-object v1, p0, Ltt1;->f:Ljava/lang/Object;

    iget-object v2, p0, Ltt1;->g:Lxs0;

    iget-object v3, p0, Ltt1;->h:Ljava/lang/String;

    iget-wide v4, p0, Ltt1;->i:J

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lxs0;->isDone()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    const-string v7, "Timeout."

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v8

    invoke-interface {v8}, Lb20;->b()J

    move-result-wide v8

    sub-long/2addr v8, v4

    long-to-int v4, v8

    .line 5
    iget-object v5, v0, Lmt1;->n:Ljava/util/Map;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v8, v3, v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, v0, Lmt1;->l:Lws1;

    const-string v5, "timeout"

    invoke-virtual {v4, v3, v5}, Lws1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, v0, Lmt1;->o:Lye1;

    const-string v4, "timeout"

    .line 8
    new-instance v5, Lze1;

    invoke-direct {v5, v3, v4}, Lze1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lxd1;->D0(Lzd1;)V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
