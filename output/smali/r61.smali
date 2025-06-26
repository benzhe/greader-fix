.class public final synthetic Lr61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lq61;

.field public final b:Lrv2;

.field public final c:Law2;


# direct methods
.method public constructor <init>(Lq61;Lrv2;Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr61;->a:Lq61;

    iput-object p2, p0, Lr61;->b:Lrv2;

    iput-object p3, p0, Lr61;->c:Law2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 5

    iget-object v0, p0, Lr61;->a:Lq61;

    iget-object v1, p0, Lr61;->b:Lrv2;

    iget-object v2, p0, Lr61;->c:Law2;

    check-cast p1, Lf61;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lrv2;->onSuccess(Ljava/lang/Object;)V

    .line 3
    :cond_0
    sget-object p1, La70;->a:Le60;

    .line 4
    invoke-virtual {p1}, Le60;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lq61;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-static {v2, v3, v4, p1, v0}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object p1

    return-object p1
.end method
