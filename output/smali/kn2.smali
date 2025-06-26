.class public final Lkn2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lf61;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lmm2;

.field public b:Lon2;

.field public c:Liw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liw2<",
            "Lcn2<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field public d:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Lcn2<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field public e:I

.field public final f:Lsm2;

.field public final g:Lth2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lth2<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lon2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lrv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrv2<",
            "Lcn2<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsm2;Lmm2;Lth2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsm2;",
            "Lmm2;",
            "Lth2<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lkn2;->e:I

    .line 3
    new-instance v0, Lln2;

    invoke-direct {v0, p0}, Lln2;-><init>(Lkn2;)V

    iput-object v0, p0, Lkn2;->i:Lrv2;

    .line 4
    iput-object p1, p0, Lkn2;->f:Lsm2;

    .line 5
    iput-object p2, p0, Lkn2;->a:Lmm2;

    .line 6
    iput-object p3, p0, Lkn2;->g:Lth2;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lkn2;->h:Ljava/util/LinkedList;

    .line 8
    new-instance p1, Lmn2;

    invoke-direct {p1, p0}, Lmn2;-><init>(Lkn2;)V

    .line 9
    iput-object p1, p2, Lmm2;->a:Lmn2;

    return-void
.end method


# virtual methods
.method public final a(Lon2;)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lkn2;->d:Law2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lkn2;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 3
    iget-object v0, p0, Lkn2;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 4
    iget-object p1, p0, Lkn2;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lon2;

    .line 5
    :cond_5
    invoke-interface {p1}, Lon2;->a()Lbn2;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkn2;->f:Lsm2;

    invoke-interface {p1}, Lon2;->a()Lbn2;

    move-result-object v3

    check-cast v0, Lrm2;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v4, v0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpm2;

    if-eqz v3, :cond_7

    .line 8
    invoke-virtual {v3}, Lpm2;->a()I

    move-result v3

    iget-object v4, v0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzdrc;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-ge v3, v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 9
    :cond_7
    monitor-exit v0

    :goto_3
    if-eqz v1, :cond_8

    .line 10
    invoke-interface {p1}, Lon2;->c()Lon2;

    move-result-object v0

    iput-object v0, p0, Lkn2;->b:Lon2;

    .line 11
    new-instance v0, Liw2;

    invoke-direct {v0}, Liw2;-><init>()V

    .line 12
    iput-object v0, p0, Lkn2;->c:Liw2;

    .line 13
    iget-object v0, p0, Lkn2;->g:Lth2;

    iget-object v1, p0, Lkn2;->b:Lon2;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    check-cast v1, Lwh2;

    .line 16
    iget-object v0, v0, Lth2;->a:Lli2;

    iget-object v2, v1, Lwh2;->b:Lpi2;

    iget-object v1, v1, Lwh2;->a:Lni2;

    invoke-interface {v0, v2, v1}, Lli2;->a(Lpi2;Lni2;)Law2;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lkn2;->d:Law2;

    .line 18
    iget-object v1, p0, Lkn2;->i:Lrv2;

    invoke-interface {p1}, Lon2;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lvt2;->i(Law2;Lrv2;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    throw p1

    :cond_8
    const/4 p1, 0x0

    goto/16 :goto_0
.end method
