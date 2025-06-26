.class public final Lmt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Llu2;->C:Lrn2;

    .line 2
    invoke-virtual {v0}, Lrn2;->c()V

    .line 3
    sget-object v0, Llu2;->C:Lrn2;

    .line 4
    iget-object v1, v0, Lrn2;->l:Lkd3;

    invoke-static {v1}, Lrr2;->a(Lkd3;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lrn2;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lso2;

    invoke-direct {v2, v0}, Lso2;-><init>(Lrn2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Llu2;->E:Lpq2;

    const/16 v2, 0x7d1

    const-wide/16 v3, -0x1

    .line 7
    invoke-virtual {v1, v2, v3, v4, v0}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void
.end method
