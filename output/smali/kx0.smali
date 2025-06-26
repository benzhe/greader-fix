.class public final synthetic Lkx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lx20;


# direct methods
.method public constructor <init>(Lx20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkx0;->e:Lx20;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lkx0;->e:Lx20;

    .line 1
    sget v1, Lcom/google/android/gms/internal/ads/zzbft;->h:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lrk0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v3, Ly40;->T2:Lo40;

    .line 6
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lrk0;->c:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v1, v1, Lrk0;->a:Lkq2;

    invoke-interface {v1, v0}, Lkq2;->l5(Lx20;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "#007 Could not call remote method."

    .line 11
    invoke-static {v1, v0}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
