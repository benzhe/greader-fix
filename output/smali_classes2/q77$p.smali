.class public Lq77$p;
.super Ly27;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lq77;


# direct methods
.method public constructor <init>(Lq77;Ljava/lang/String;Lq77$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$p;->b:Lq77;

    invoke-direct {p0}, Ly27;-><init>()V

    const-string p1, "authority"

    .line 2
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lq77$p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lj47;Lx27;)La37;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TReqT;TRespT;>;",
            "Lx27;",
            ")",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lt57;

    iget-object v0, p0, Lq77$p;->b:Lq77;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p2, Lx27;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Lq77;->h:Ljava/util/concurrent/Executor;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 5
    :goto_0
    iget-object v0, p0, Lq77$p;->b:Lq77;

    .line 6
    iget-object v4, v0, Lq77;->a0:Lt57$c;

    .line 7
    iget-boolean v0, v0, Lq77;->I:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lq77$p;->b:Lq77;

    .line 9
    iget-object v0, v0, Lq77;->f:Lb67;

    .line 10
    invoke-interface {v0}, Lb67;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :goto_1
    move-object v5, v0

    iget-object v0, p0, Lq77$p;->b:Lq77;

    .line 11
    iget-object v6, v0, Lq77;->L:Lq57;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    .line 12
    invoke-direct/range {v0 .. v7}, Lt57;-><init>(Lj47;Ljava/util/concurrent/Executor;Lx27;Lt57$c;Ljava/util/concurrent/ScheduledExecutorService;Lq57;Z)V

    iget-object p1, p0, Lq77$p;->b:Lq77;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, v8, Lt57;->p:Z

    .line 15
    iget-object p1, p0, Lq77$p;->b:Lq77;

    .line 16
    iget-object p2, p1, Lq77;->o:Lo37;

    .line 17
    iput-object p2, v8, Lt57;->q:Lo37;

    .line 18
    iget-object p1, p1, Lq77;->p:Lh37;

    .line 19
    iput-object p1, v8, Lt57;->r:Lh37;

    return-object v8
.end method
