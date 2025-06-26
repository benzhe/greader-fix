.class public final Lrf1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lem3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lem3;",
        ">;",
        "Lem3;"
    }
.end annotation


# instance fields
.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lam3;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/content/Context;

.field public final h:Lsk2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Lsk2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lem3;",
            ">;>;",
            "Lsk2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lxd1;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p2, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object p2, p0, Lrf1;->f:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lrf1;->g:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lrf1;->h:Lsk2;

    return-void
.end method


# virtual methods
.method public final declared-synchronized G0(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lrf1;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam3;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lam3;

    iget-object v1, p0, Lrf1;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lam3;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    iget-object v1, v0, Lam3;->q:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lam3;->d(I)V

    .line 5
    iget-object v1, p0, Lrf1;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p1, p0, Lrf1;->h:Lsk2;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lsk2;->R:Z

    if-eqz p1, :cond_1

    sget-object p1, Ly40;->R0:Lo40;

    .line 7
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v1, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Ly40;->Q0:Lo40;

    .line 11
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 12
    invoke-virtual {v1, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 14
    iget-object p1, v0, Lam3;->n:Lcom/google/android/gms/ads/internal/util/zzbp;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzfc(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_1
    :try_start_1
    iget-object p1, v0, Lam3;->n:Lcom/google/android/gms/ads/internal/util/zzbp;

    sget-wide v0, Lam3;->t:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzfc(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c0(Lfm3;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Luf1;

    invoke-direct {v0, p1}, Luf1;-><init>(Lfm3;)V

    invoke-virtual {p0, v0}, Lxd1;->D0(Lzd1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
