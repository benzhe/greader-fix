.class public Lj48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz38;


# instance fields
.field public a:Z

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li48;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Le48;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj48;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj48;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lj48;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)La48;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj48;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li48;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li48;

    iget-object v1, p0, Lj48;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lj48;->a:Z

    invoke-direct {v0, p1, v1, v2}, Li48;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    .line 3
    iget-object v1, p0, Lj48;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
