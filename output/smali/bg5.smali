.class public final synthetic Lbg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lpg5;

.field public final f:Ls96;


# direct methods
.method public constructor <init>(Lpg5;Ls96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg5;->e:Lpg5;

    iput-object p2, p0, Lbg5;->f:Ls96;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lbg5;->e:Lpg5;

    iget-object v1, p0, Lbg5;->f:Ls96;

    .line 1
    sget v2, Leg5;->g:I

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lpg5;->b:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v0, Lpg5;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lpg5;->b:Ljava/util/Set;

    invoke-interface {v1}, Ls96;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
