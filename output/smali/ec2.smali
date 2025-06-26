.class public final Lec2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnd2<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lqd2<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Lqd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd2<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lqd2;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd2<",
            "TS;>;J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lec2;->a:Lqd2;

    .line 3
    iput-wide p2, p0, Lec2;->b:J

    .line 4
    iput-object p4, p0, Lec2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lec2;->a:Lqd2;

    invoke-interface {v0}, Lqd2;->a()Law2;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lec2;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lec2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v0

    .line 5
    :cond_0
    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Ldc2;->a:Lcv2;

    sget-object v3, Lms0;->f:Lzv2;

    invoke-static {v0, v1, v2, v3}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
