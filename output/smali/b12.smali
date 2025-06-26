.class public final synthetic Lb12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lz02;

.field public final f:Lhl2;

.field public final g:Lsk2;


# direct methods
.method public constructor <init>(Lz02;Lhl2;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb12;->e:Lz02;

    iput-object p2, p0, Lb12;->f:Lhl2;

    iput-object p3, p0, Lb12;->g:Lsk2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lb12;->e:Lz02;

    iget-object v1, p0, Lb12;->f:Lhl2;

    iget-object v2, p0, Lb12;->g:Lsk2;

    .line 1
    iget-object v3, v0, Lz02;->b:Ld02;

    .line 2
    invoke-virtual {v3, v1, v2}, Ld02;->b(Lhl2;Lsk2;)Law2;

    move-result-object v1

    iget v2, v2, Lsk2;->M:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, Lz02;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {v1, v2, v3, v4, v5}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v1

    .line 4
    new-instance v2, Le12;

    invoke-direct {v2, v0}, Le12;-><init>(Lz02;)V

    iget-object v0, v0, Lz02;->c:Lzv2;

    .line 5
    new-instance v3, Lsv2;

    invoke-direct {v3, v1, v2}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    invoke-interface {v1, v3, v0}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
