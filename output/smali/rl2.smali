.class public final Lrl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsk2;

.field public final b:Lwk2;

.field public final c:Lsy1;

.field public final d:Ljq2;


# direct methods
.method public constructor <init>(Lsy1;Ljq2;Lsk2;Lwk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lrl2;->a:Lsk2;

    .line 3
    iput-object p4, p0, Lrl2;->b:Lwk2;

    .line 4
    iput-object p1, p0, Lrl2;->c:Lsy1;

    .line 5
    iput-object p2, p0, Lrl2;->d:Ljq2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0, p2}, Lrl2;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lrl2;->a:Lsk2;

    iget-boolean v0, v0, Lsk2;->d0:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lrl2;->d:Ljq2;

    .line 3
    iget-object v0, p2, Ljq2;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Liq2;

    invoke-direct {v1, p2, p1}, Liq2;-><init>(Ljq2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lzy1;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v3

    iget-object v1, p0, Lrl2;->b:Lwk2;

    iget-object v5, v1, Lwk2;->b:Ljava/lang/String;

    move-object v2, v0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lzy1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lrl2;->c:Lsy1;

    .line 7
    new-instance p2, Lyy1;

    invoke-direct {p2, p1, v0}, Lyy1;-><init>(Lsy1;Lzy1;)V

    invoke-virtual {p1, p2}, Lsy1;->c(Ljo2;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1}, Lrl2;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
