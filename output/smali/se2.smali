.class public final Lse2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lpe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkr0;

.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:Lor0;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkr0;ILandroid/content/Context;Lor0;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lse2;->a:Lkr0;

    .line 3
    iput p2, p0, Lse2;->b:I

    .line 4
    iput-object p3, p0, Lse2;->c:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lse2;->d:Lor0;

    .line 6
    iput-object p5, p0, Lse2;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p6, p0, Lse2;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lpe2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lre2;

    invoke-direct {v0, p0}, Lre2;-><init>(Lse2;)V

    iget-object v1, p0, Lse2;->f:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1}, Lvt2;->c(Ldv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lnv2;->A(Law2;)Lnv2;

    move-result-object v0

    sget-object v1, Lue2;->a:Lvs2;

    iget-object v2, p0, Lse2;->f:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v0, v1, v2}, Lnv2;->y(Lvs2;Ljava/util/concurrent/Executor;)Lnv2;

    move-result-object v0

    sget-object v1, Ly40;->E0:Lo40;

    .line 5
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lse2;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Lnv2;->x(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnv2;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    new-instance v2, Lte2;

    invoke-direct {v2, p0}, Lte2;-><init>(Lse2;)V

    .line 9
    sget-object v3, Llv2;->e:Llv2;

    .line 10
    new-instance v4, Lqu2;

    invoke-direct {v4, v0, v1, v2}, Lqu2;-><init>(Law2;Ljava/lang/Class;Lvs2;)V

    .line 11
    invoke-static {v3, v4}, Lvt2;->g(Ljava/util/concurrent/Executor;Lsu2;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v4
.end method
