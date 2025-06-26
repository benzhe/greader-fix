.class public final synthetic Lsh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lph2;

.field public final b:Lpi2;

.field public final c:Lwh2;

.field public final d:Lni2;


# direct methods
.method public constructor <init>(Lph2;Lpi2;Lwh2;Lni2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh2;->a:Lph2;

    iput-object p2, p0, Lsh2;->b:Lpi2;

    iput-object p3, p0, Lsh2;->c:Lwh2;

    iput-object p4, p0, Lsh2;->d:Lni2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 13

    iget-object v0, p0, Lsh2;->a:Lph2;

    iget-object v1, p0, Lsh2;->b:Lpi2;

    iget-object v2, p0, Lsh2;->c:Lwh2;

    iget-object v3, p0, Lsh2;->d:Lni2;

    check-cast p1, Lbi2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 2
    iget-object v11, p1, Lbi2;->a:Lbn2;

    .line 3
    new-instance v12, Lwh2;

    iget-object v5, v2, Lwh2;->a:Lni2;

    iget-object v6, v2, Lwh2;->b:Lpi2;

    iget-object v7, v2, Lwh2;->c:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v8, v2, Lwh2;->d:Ljava/lang/String;

    iget-object v9, v2, Lwh2;->e:Ljava/util/concurrent/Executor;

    iget-object v10, v2, Lwh2;->f:Lcom/google/android/gms/internal/ads/zzwc;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lwh2;-><init>(Lni2;Lpi2;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lbn2;)V

    .line 4
    iget-object v2, p1, Lbi2;->c:Lcn2;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 5
    iput-object v4, v0, Lph2;->d:Ll91;

    .line 6
    iget-object v2, v0, Lph2;->c:Lkn2;

    .line 7
    iget-object v2, v2, Lkn2;->h:Ljava/util/LinkedList;

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p1, Lbi2;->c:Lcn2;

    invoke-virtual {v0, p1, v1, v3}, Lph2;->c(Lcn2;Lpi2;Lni2;)Law2;

    move-result-object p1

    goto/16 :goto_5

    .line 9
    :cond_0
    iget-object v2, v0, Lph2;->c:Lkn2;

    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v5, v2, Lkn2;->d:Law2;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_3

    .line 12
    monitor-exit v2

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    .line 13
    :try_start_1
    iput v5, v2, Lkn2;->e:I

    .line 14
    iget-object v5, v2, Lkn2;->b:Lon2;

    invoke-interface {v5}, Lon2;->a()Lbn2;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 15
    invoke-virtual {v12}, Lwh2;->a()Lbn2;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Lkn2;->b:Lon2;

    .line 16
    invoke-interface {v5}, Lon2;->a()Lbn2;

    move-result-object v5

    invoke-virtual {v12}, Lwh2;->a()Lbn2;

    move-result-object v6

    invoke-interface {v5, v6}, Lbn2;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    .line 17
    iput v4, v2, Lkn2;->e:I

    .line 18
    iget-object v4, v2, Lkn2;->c:Liw2;

    new-instance v5, Ljn2;

    invoke-direct {v5, v2}, Ljn2;-><init>(Lkn2;)V

    .line 19
    invoke-virtual {v12}, Lwh2;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 20
    invoke-static {v4, v5, v6}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    monitor-exit v2

    :goto_3
    if-eqz v4, :cond_6

    .line 22
    iget-object p1, v1, Lpi2;->b:Loi2;

    .line 23
    invoke-interface {v3, p1}, Lni2;->a(Loi2;)Lk91;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lk91;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll91;

    iput-object p1, v0, Lph2;->d:Ll91;

    .line 25
    new-instance p1, Luh2;

    invoke-direct {p1, v0, v3}, Luh2;-><init>(Lph2;Lni2;)V

    iget-object v0, v0, Lph2;->e:Ljava/util/concurrent/Executor;

    invoke-static {v4, p1, v0}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    goto :goto_5

    .line 26
    :cond_6
    iget-object v2, v0, Lph2;->c:Lkn2;

    .line 27
    iget-object v2, v2, Lkn2;->h:Ljava/util/LinkedList;

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lpi2;

    iget-object v1, v1, Lpi2;->b:Loi2;

    iget-object p1, p1, Lbi2;->b:Lcom/google/android/gms/internal/ads/zzauj;

    invoke-direct {v2, v1, p1}, Lpi2;-><init>(Loi2;Lcom/google/android/gms/internal/ads/zzauj;)V

    move-object v1, v2

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v2

    throw p1

    .line 30
    :cond_7
    :goto_4
    iget-object p1, v0, Lph2;->a:Lli2;

    .line 31
    invoke-interface {p1, v1, v3}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object p1

    .line 32
    iget-object v1, v0, Lph2;->a:Lli2;

    invoke-interface {v1}, Lli2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll91;

    iput-object v1, v0, Lph2;->d:Ll91;

    :goto_5
    return-object p1
.end method
