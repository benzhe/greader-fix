.class public final Lt61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Ll61;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lrv2;

.field public final synthetic b:Lq61;


# direct methods
.method public constructor <init>(Lq61;Lrv2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt61;->b:Lq61;

    iput-object p2, p0, Lt61;->a:Lrv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt61;->a:Lrv2;

    invoke-interface {v0, p1}, Lrv2;->a(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lt61;->b:Lq61;

    invoke-static {p1}, Lq61;->a(Lq61;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ll61;

    .line 2
    iget-object v0, p0, Lt61;->b:Lq61;

    iget-object p1, p1, Ll61;->a:Ljava/util/List;

    iget-object v1, p0, Lt61;->a:Lrv2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Law2;

    .line 7
    const-class v4, Ljava/lang/Throwable;

    new-instance v5, Ls61;

    invoke-direct {v5, v1}, Ls61;-><init>(Lrv2;)V

    iget-object v6, v0, Lq61;->a:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v2, v4, v5, v6}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    .line 9
    new-instance v4, Lr61;

    invoke-direct {v4, v0, v1, v3}, Lr61;-><init>(Lq61;Lrv2;Law2;)V

    iget-object v3, v0, Lq61;->a:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v2, v4, v3}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lw61;

    invoke-direct {p1, v0, v1}, Lw61;-><init>(Lq61;Lrv2;)V

    iget-object v0, v0, Lq61;->a:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v1, Lsv2;

    invoke-direct {v1, v2, p1}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v2, v1, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 13
    :cond_2
    :goto_1
    iget-object p1, v0, Lq61;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lp61;

    invoke-direct {v0, v1}, Lp61;-><init>(Lrv2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
