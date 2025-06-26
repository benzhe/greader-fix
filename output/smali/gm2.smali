.class public final Lgm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda1;


# instance fields
.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lnr0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:Lxr0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxr0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgm2;->e:Ljava/util/HashSet;

    .line 3
    iput-object p1, p0, Lgm2;->f:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lgm2;->g:Lxr0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->e:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lgm2;->g:Lxr0;

    iget-object v0, p0, Lgm2;->e:Ljava/util/HashSet;

    .line 3
    iget-object v1, p1, Lxr0;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object p1, p1, Lxr0;->e:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Landroid/os/Bundle;
    .locals 12

    .line 1
    iget-object v0, p0, Lgm2;->g:Lxr0;

    iget-object v1, p0, Lgm2;->f:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v3, v0, Lxr0;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 5
    :try_start_0
    iget-object v4, v0, Lxr0;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v4, v0, Lxr0;->e:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "app"

    .line 9
    iget-object v5, v0, Lxr0;->d:Ltr0;

    iget-object v6, v0, Lxr0;->c:Lwr0;

    .line 10
    monitor-enter v6

    .line 11
    :try_start_1
    iget-object v7, v6, Lwr0;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v6

    .line 12
    iget-object v8, v5, Ltr0;->f:Ljava/lang/Object;

    monitor-enter v8

    .line 13
    :try_start_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v9, v5, Ltr0;->h:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v9}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, ""

    goto :goto_0

    :cond_0
    iget-object v9, v5, Ltr0;->g:Ljava/lang/String;

    :goto_0
    const-string v10, "session_id"

    .line 15
    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "basets"

    .line 16
    iget-wide v10, v5, Ltr0;->b:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v9, "currts"

    .line 17
    iget-wide v10, v5, Ltr0;->a:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v9, "seq_num"

    .line 18
    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "preqs"

    .line 19
    iget v9, v5, Ltr0;->c:I

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "preqs_in_session"

    .line 20
    iget v9, v5, Ltr0;->d:I

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "time_in_session"

    .line 21
    iget-wide v9, v5, Ltr0;->e:J

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "pclick"

    .line 22
    iget v9, v5, Ltr0;->i:I

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "pimp"

    .line 23
    iget v5, v5, Ltr0;->j:I

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "support_transparent_background"

    .line 24
    invoke-static {v1}, Ltr0;->b(Landroid/content/Context;)Z

    move-result v1

    .line 25
    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    iget-object v0, v0, Lxr0;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "slots"

    .line 30
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnr0;

    .line 33
    invoke-virtual {v4}, Lnr0;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, "ads"

    .line 34
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 35
    monitor-enter p0

    .line 36
    :try_start_3
    iget-object v0, p0, Lgm2;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 37
    iget-object v0, p0, Lgm2;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvr0;

    .line 40
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 41
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 42
    monitor-exit v6

    throw v0

    :catchall_3
    move-exception v0

    .line 43
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
