.class public Lhh6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhh6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Leg5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lhh6;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    .line 3
    new-instance v1, Lvf5$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lvf5$b;-><init>(Ljava/lang/Class;Lvf5$a;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lvf5$b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-static {v2}, Lvf5;->a(Ljava/lang/String;)Lxf5;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lng5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ComponentDiscovery"

    const-string v4, "Invalid component registrar."

    .line 8
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Leg5;

    sget-object v2, Lg45;->a:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Lsf5;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 10
    invoke-static {p1, v4, v6}, Lsf5;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lsf5;

    move-result-object p1

    aput-object p1, v3, v5

    const-class p1, Lhh6;

    new-array v4, v5, [Ljava/lang/Class;

    .line 11
    invoke-static {p0, p1, v4}, Lsf5;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lsf5;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxf5;

    .line 14
    new-instance v6, Lzf5;

    invoke-direct {v6, v5}, Lzf5;-><init>(Lxf5;)V

    .line 15
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Leg5;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 17
    iput-object v1, p0, Lhh6;->a:Leg5;

    .line 18
    invoke-virtual {v1, v4}, Leg5;->f(Z)V

    return-void
.end method
