.class public final synthetic Liq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmq5;

.field public final f:Lf45;

.field public final g:Landroid/content/Context;

.field public final h:Lap5;


# direct methods
.method public constructor <init>(Lmq5;Lf45;Landroid/content/Context;Lap5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq5;->e:Lmq5;

    iput-object p2, p0, Liq5;->f:Lf45;

    iput-object p3, p0, Liq5;->g:Landroid/content/Context;

    iput-object p4, p0, Liq5;->h:Lap5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Liq5;->e:Lmq5;

    iget-object v1, p0, Liq5;->f:Lf45;

    iget-object v2, p0, Liq5;->g:Landroid/content/Context;

    iget-object v3, p0, Liq5;->h:Lap5;

    .line 1
    :try_start_0
    iget-object v1, v1, Lf45;->a:Le55;

    .line 2
    invoke-static {v1}, Lc50;->d(Le45;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltp5;

    .line 3
    invoke-virtual {v0, v2, v1, v3}, Lmq5;->a(Landroid/content/Context;Ltp5;Lap5;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
