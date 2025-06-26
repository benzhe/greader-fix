.class public final synthetic Lqh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljava/util/concurrent/Callable;

.field public final f:Lf45;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh6;->e:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lqh6;->f:Lf45;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lqh6;->e:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lqh6;->f:Lf45;

    .line 1
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ltg6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, v1, Lf45;->a:Le55;

    invoke-virtual {v1, v0}, Le55;->s(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v2, Ltg6;

    const/16 v3, 0xd

    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v2, v4, v3, v0}, Ltg6;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 4
    iget-object v0, v1, Lf45;->a:Le55;

    invoke-virtual {v0, v2}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    iget-object v1, v1, Lf45;->a:Le55;

    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
