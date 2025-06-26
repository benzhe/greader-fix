.class public final Lxm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lym3;


# direct methods
.method public constructor <init>(Lym3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxm3;->e:Lym3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxm3;->e:Lym3;

    .line 2
    iget-object v0, v0, Lym3;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lxm3;->e:Lym3;

    .line 5
    iget-boolean v2, v1, Lym3;->h:Z

    if-eqz v2, :cond_0

    .line 6
    iget-boolean v2, v1, Lym3;->i:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v1, Lym3;->h:Z

    const-string v1, "App went background"

    .line 8
    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lxm3;->e:Lym3;

    .line 10
    iget-object v1, v1, Lym3;->j:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lan3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-interface {v3, v2}, Lan3;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, ""

    .line 13
    invoke-static {v4, v3}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "App is still foreground"

    .line 14
    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 15
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
