.class public final synthetic Lag5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ltg5;

.field public final f:Ls96;


# direct methods
.method public constructor <init>(Ltg5;Ls96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag5;->e:Ltg5;

    iput-object p2, p0, Lag5;->f:Ls96;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lag5;->e:Ltg5;

    iget-object v1, p0, Lag5;->f:Ls96;

    .line 1
    sget v2, Leg5;->g:I

    .line 2
    iget-object v2, v0, Ltg5;->b:Ls96;

    sget-object v3, Lsg5;->a:Lsg5;

    if-ne v2, v3, :cond_0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, v0, Ltg5;->a:Lr96;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v0, Ltg5;->a:Lr96;

    .line 6
    iput-object v1, v0, Ltg5;->b:Ls96;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    check-cast v2, Lrg5;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
