.class public final Lo45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Le45;

.field public final synthetic f:Lm45;


# direct methods
.method public constructor <init>(Lm45;Le45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo45;->f:Lm45;

    iput-object p2, p0, Lo45;->e:Le45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo45;->e:Le45;

    invoke-virtual {v0}, Le45;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo45;->f:Lm45;

    .line 3
    iget-object v0, v0, Lm45;->c:Le55;

    .line 4
    invoke-virtual {v0}, Le55;->t()Z

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo45;->f:Lm45;

    .line 6
    iget-object v0, v0, Lm45;->b:Lw35;

    .line 7
    iget-object v1, p0, Lo45;->e:Le45;

    invoke-interface {v0, v1}, Lw35;->a(Le45;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lc45; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v1, p0, Lo45;->f:Lm45;

    .line 9
    iget-object v1, v1, Lm45;->c:Le55;

    .line 10
    invoke-virtual {v1, v0}, Le55;->s(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lo45;->f:Lm45;

    .line 12
    iget-object v1, v1, Lm45;->c:Le55;

    .line 13
    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lo45;->f:Lm45;

    .line 16
    iget-object v1, v1, Lm45;->c:Le55;

    .line 17
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    return-void

    .line 18
    :cond_1
    iget-object v1, p0, Lo45;->f:Lm45;

    .line 19
    iget-object v1, v1, Lm45;->c:Le55;

    .line 20
    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    return-void
.end method
