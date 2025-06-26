.class public Lsj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/Callable;

.field public final synthetic f:Lf45;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lf45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsj5;->e:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lsj5;->f:Lf45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lsj5;->e:Ljava/util/concurrent/Callable;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le45;

    new-instance v1, Lsj5$a;

    invoke-direct {v1, p0}, Lsj5$a;-><init>(Lsj5;)V

    .line 3
    invoke-virtual {v0, v1}, Le45;->h(Lw35;)Le45;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lsj5;->f:Lf45;

    .line 5
    iget-object v1, v1, Lf45;->a:Le55;

    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
