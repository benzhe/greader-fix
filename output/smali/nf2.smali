.class public final Lnf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Ljf2;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfl0;

.field public b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lfl0;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnf2;->a:Lfl0;

    .line 3
    iput-object p2, p0, Lnf2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lnf2;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ljf2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnf2;->a:Lfl0;

    iget-object v1, p0, Lnf2;->c:Landroid/content/Context;

    .line 2
    invoke-interface {v0, v1}, Lfl0;->a(Landroid/content/Context;)Law2;

    move-result-object v0

    sget-object v1, Ly40;->i2:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lnf2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v0

    .line 7
    sget-object v1, Llf2;->a:Lvs2;

    sget-object v2, Lms0;->a:Lzv2;

    invoke-static {v0, v1, v2}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
