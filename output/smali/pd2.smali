.class public final Lpd2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lqd2<",
            "+",
            "Lnd2<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Lqd2<",
            "+",
            "Lnd2<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpd2;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lpd2;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Law2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lpd2;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lpd2;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqd2;

    .line 3
    invoke-interface {v2}, Lqd2;->a()Law2;

    move-result-object v3

    .line 4
    sget-object v4, Lq60;->a:Le60;

    invoke-virtual {v4}, Le60;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v4

    invoke-interface {v4}, Lb20;->b()J

    move-result-wide v4

    .line 6
    new-instance v6, Lsd2;

    invoke-direct {v6, v2, v4, v5}, Lsd2;-><init>(Lqd2;J)V

    .line 7
    sget-object v2, Lms0;->f:Lzv2;

    .line 8
    invoke-interface {v3, v6, v2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lnt2;->y(Ljava/lang/Iterable;)Lnt2;

    move-result-object v1

    const/4 v2, 0x1

    .line 11
    new-instance v3, Lrd2;

    invoke-direct {v3, v0, p1}, Lrd2;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object p1, p0, Lpd2;->b:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v0, Lgv2;

    invoke-direct {v0, v1, v2, p1, v3}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
