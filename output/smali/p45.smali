.class public final Lp45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Le45;

.field public final synthetic f:Ln45;


# direct methods
.method public constructor <init>(Ln45;Le45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp45;->f:Ln45;

    iput-object p2, p0, Lp45;->e:Le45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp45;->f:Ln45;

    .line 2
    iget-object v0, v0, Ln45;->b:Lw35;

    .line 3
    iget-object v1, p0, Lp45;->e:Le45;

    invoke-interface {v0, v1}, Lw35;->a(Le45;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le45;
    :try_end_0
    .catch Lc45; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lp45;->f:Ln45;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Ln45;->c:Le55;

    invoke-virtual {v0, v1}, Le55;->r(Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    sget-object v1, Lg45;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lp45;->f:Ln45;

    invoke-virtual {v0, v1, v2}, Le45;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    .line 7
    iget-object v2, p0, Lp45;->f:Ln45;

    invoke-virtual {v0, v1, v2}, Le45;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    .line 8
    iget-object v2, p0, Lp45;->f:Ln45;

    invoke-virtual {v0, v1, v2}, Le45;->a(Ljava/util/concurrent/Executor;Ly35;)Le45;

    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lp45;->f:Ln45;

    .line 10
    iget-object v1, v1, Ln45;->c:Le55;

    .line 11
    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lp45;->f:Ln45;

    .line 14
    iget-object v1, v1, Ln45;->c:Le55;

    .line 15
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Lp45;->f:Ln45;

    .line 17
    iget-object v1, v1, Ln45;->c:Le55;

    .line 18
    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    return-void
.end method
