.class public Lf45;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le55<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    iput-object v0, p0, Lf45;->a:Le55;

    return-void
.end method

.method public constructor <init>(Lk45;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    iput-object v0, p0, Lf45;->a:Le55;

    .line 5
    new-instance v0, Lc55;

    invoke-direct {v0, p0}, Lc55;-><init>(Lf45;)V

    .line 6
    iget-object p1, p1, Lk45;->a:Le55;

    new-instance v1, Ll45;

    invoke-direct {v1, v0}, Ll45;-><init>(Lc55;)V

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Le55;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf45;->a:Le55;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Exception must not be null"

    .line 3
    invoke-static {p1, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Le55;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-boolean v2, v0, Le55;->c:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 6
    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, Le55;->c:Z

    .line 8
    iput-object p1, v0, Le55;->f:Ljava/lang/Exception;

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, v0, Le55;->b:La55;

    invoke-virtual {p1, v0}, La55;->a(Le45;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
