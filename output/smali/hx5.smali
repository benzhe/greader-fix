.class public final synthetic Lhx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lf45;

.field public final f:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lf45;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx5;->e:Lf45;

    iput-object p2, p0, Lhx5;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lhx5;->e:Lf45;

    iget-object v1, p0, Lhx5;->f:Ljava/util/concurrent/Callable;

    .line 1
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lf45;->a:Le55;

    invoke-virtual {v2, v1}, Le55;->s(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 3
    iget-object v0, v0, Lf45;->a:Le55;

    invoke-virtual {v0, v1}, Le55;->r(Ljava/lang/Exception;)V

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
