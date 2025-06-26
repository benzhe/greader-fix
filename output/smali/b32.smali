.class public final synthetic Lb32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lc32;

.field public final b:Lhl2;

.field public final c:Lsk2;

.field public final d:Ljz1;


# direct methods
.method public constructor <init>(Lc32;Lhl2;Lsk2;Ljz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb32;->a:Lc32;

    iput-object p2, p0, Lb32;->b:Lhl2;

    iput-object p3, p0, Lb32;->c:Lsk2;

    iput-object p4, p0, Lb32;->d:Ljz1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 9

    iget-object v0, p0, Lb32;->a:Lc32;

    iget-object v1, p0, Lb32;->b:Lhl2;

    iget-object v7, p0, Lb32;->c:Lsk2;

    iget-object v2, p0, Lb32;->d:Ljz1;

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object v3, v0, Lc32;->h:Lv22;

    iget-object p1, v1, Lhl2;->b:Lfl2;

    iget-object v8, p1, Lfl2;->b:Lwk2;

    .line 2
    invoke-interface {v2, v1, v7}, Ljz1;->b(Lhl2;Lsk2;)Law2;

    move-result-object p1

    iget v1, v7, Lsk2;->M:I

    int-to-long v1, v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lc32;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {p1, v1, v2, v4, v0}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object p1

    .line 4
    iget-object v0, v3, Lv22;->a:Lb20;

    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v4

    .line 5
    iget-object v6, v7, Lsk2;->v:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 6
    new-instance v0, Ly22;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ly22;-><init>(Lv22;JLjava/lang/String;Lsk2;Lwk2;)V

    sget-object v1, Lms0;->f:Lzv2;

    .line 7
    new-instance v2, Lsv2;

    invoke-direct {v2, p1, v0}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {p1, v2, v1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method
