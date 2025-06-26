.class public final Lee2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lbe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkr0;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:I


# direct methods
.method public constructor <init>(Lkr0;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lee2;->a:Lkr0;

    .line 3
    iput-object p2, p0, Lee2;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lee2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lee2;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput p5, p0, Lee2;->e:I

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lbe2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->D0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lee2;->a:Lkr0;

    iget-object v1, p0, Lee2;->b:Landroid/content/Context;

    iget v2, p0, Lee2;->e:I

    invoke-interface {v0, v1, v2}, Lkr0;->c(Landroid/content/Context;I)Law2;

    move-result-object v0

    invoke-static {v0}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v0

    sget-object v1, Lde2;->a:Lvs2;

    iget-object v2, p0, Lee2;->d:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {v0, v1, v2}, Lnv2;->y(Lvs2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object v0

    sget-object v1, Ly40;->E0:Lo40;

    .line 7
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lee2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lnv2;->x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lge2;

    invoke-direct {v2, p0}, Lge2;-><init>(Lee2;)V

    iget-object v3, p0, Lee2;->d:Ljava/util/concurrent/Executor;

    .line 11
    new-instance v4, Lqu2;

    invoke-direct {v4, v0, v1, v2}, Lqu2;-><init>(Law2;Ljava/lang/Class;Lvs2;)V

    .line 12
    invoke-static {v3, v4}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v4

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v1, Lvv2$a;

    invoke-direct {v1, v0}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method
