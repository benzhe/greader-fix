.class public final Lrp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpp2;


# instance fields
.field public final a:Lpp2;

.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lqp2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lpp2;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrp2;->a:Lpp2;

    .line 3
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lrp2;->b:Ljava/util/Queue;

    .line 4
    sget-object p1, Ly40;->h5:Lo40;

    .line 5
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v0, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lrp2;->c:I

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lrp2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    sget-object p1, Ly40;->g5:Lo40;

    .line 10
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v0, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 13
    new-instance v1, Lvp2;

    invoke-direct {v1, p0}, Lvp2;-><init>(Lrp2;)V

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    move-wide v2, v4

    .line 14
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Lqp2;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrp2;->a:Lpp2;

    invoke-interface {v0, p1}, Lpp2;->a(Lqp2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lqp2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrp2;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lrp2;->c:I

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lrp2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lrp2;->b:Ljava/util/Queue;

    const-string v1, "dropped_event"

    .line 4
    invoke-static {v1}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lqp2;->e()Ljava/util/Map;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object v2, v1, Lqp2;->a:Ljava/util/HashMap;

    const-string v3, "dropped_action"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lrp2;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
