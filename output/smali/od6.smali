.class public final Lod6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lod6$a;
    }
.end annotation


# static fields
.field public static final i:Ldg6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldg6<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ldg6<",
            "*>;",
            "Lod6$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldg6<",
            "*>;",
            "Lde6<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lne6;

.field public final d:Ljf6;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lee6;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lee6;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lee6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    new-instance v1, Ldg6;

    invoke-direct {v1, v0}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    sput-object v1, Lod6;->i:Ldg6;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v0, Lve6;->g:Lve6;

    sget-object v1, Lid6;->e:Lid6;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, p0, Lod6;->a:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lod6;->b:Ljava/util/Map;

    .line 8
    new-instance v6, Lne6;

    invoke-direct {v6, v2}, Lne6;-><init>(Ljava/util/Map;)V

    iput-object v6, p0, Lod6;->c:Lne6;

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lod6;->f:Z

    .line 10
    iput-object v3, p0, Lod6;->g:Ljava/util/List;

    .line 11
    iput-object v4, p0, Lod6;->h:Ljava/util/List;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object v3, Luf6;->Y:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v3, Lnf6;->b:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    sget-object v3, Luf6;->D:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v3, Luf6;->m:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v3, Luf6;->g:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v3, Luf6;->i:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v3, Luf6;->k:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v3, Luf6;->t:Lde6;

    .line 23
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    .line 24
    new-instance v7, Lwf6;

    invoke-direct {v7, v4, v5, v3}, Lwf6;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lde6;)V

    .line 25
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    .line 27
    new-instance v7, Lkd6;

    invoke-direct {v7, p0}, Lkd6;-><init>(Lod6;)V

    .line 28
    new-instance v8, Lwf6;

    invoke-direct {v8, v4, v5, v7}, Lwf6;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lde6;)V

    .line 29
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    .line 31
    new-instance v7, Lld6;

    invoke-direct {v7, p0}, Lld6;-><init>(Lod6;)V

    .line 32
    new-instance v8, Lwf6;

    invoke-direct {v8, v4, v5, v7}, Lwf6;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lde6;)V

    .line 33
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v4, Luf6;->x:Lee6;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v4, Luf6;->o:Lee6;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v4, Luf6;->q:Lee6;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v5, Lmd6;

    invoke-direct {v5, v3}, Lmd6;-><init>(Lde6;)V

    .line 39
    new-instance v7, Lce6;

    invoke-direct {v7, v5}, Lce6;-><init>(Lde6;)V

    .line 40
    new-instance v5, Lvf6;

    invoke-direct {v5, v4, v7}, Lvf6;-><init>(Ljava/lang/Class;Lde6;)V

    .line 41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 43
    new-instance v5, Lnd6;

    invoke-direct {v5, v3}, Lnd6;-><init>(Lde6;)V

    .line 44
    new-instance v3, Lce6;

    invoke-direct {v3, v5}, Lce6;-><init>(Lde6;)V

    .line 45
    new-instance v5, Lvf6;

    invoke-direct {v5, v4, v3}, Lvf6;-><init>(Ljava/lang/Class;Lde6;)V

    .line 46
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v3, Luf6;->s:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v3, Luf6;->z:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v3, Luf6;->F:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v3, Luf6;->H:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v3, Ljava/math/BigDecimal;

    sget-object v4, Luf6;->B:Lde6;

    .line 52
    new-instance v5, Lvf6;

    invoke-direct {v5, v3, v4}, Lvf6;-><init>(Ljava/lang/Class;Lde6;)V

    .line 53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v3, Ljava/math/BigInteger;

    sget-object v4, Luf6;->C:Lde6;

    .line 55
    new-instance v5, Lvf6;

    invoke-direct {v5, v3, v4}, Lvf6;-><init>(Ljava/lang/Class;Lde6;)V

    .line 56
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Luf6;->J:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Luf6;->L:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Luf6;->P:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Luf6;->R:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Luf6;->W:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Luf6;->N:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Luf6;->d:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lif6;->b:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Luf6;->U:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Lrf6;->b:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v3, Lqf6;->b:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v3, Luf6;->S:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v3, Lgf6;->c:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v3, Luf6;->b:Lee6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Lhf6;

    invoke-direct {v3, v6}, Lhf6;-><init>(Lne6;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v3, Lmf6;

    const/4 v4, 0x0

    invoke-direct {v3, v6, v4}, Lmf6;-><init>(Lne6;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Ljf6;

    invoke-direct {v3, v6}, Ljf6;-><init>(Lne6;)V

    iput-object v3, p0, Lod6;->d:Ljf6;

    .line 74
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v4, Luf6;->Z:Lee6;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v4, Lpf6;

    invoke-direct {v4, v6, v1, v0, v3}, Lpf6;-><init>(Lne6;Ljd6;Lve6;Ljf6;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lod6;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Object;Leg6;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object p0

    sget-object p1, Lfg6;->n:Lfg6;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lud6;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lud6;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lhg6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lud6;

    invoke-direct {p1, p0}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 4
    new-instance p1, Lbe6;

    invoke-direct {p1, p0}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Leg6;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg6;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lud6;,
            Lbe6;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Leg6;->f:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Leg6;->f:Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    const/4 v1, 0x0

    .line 4
    new-instance v2, Ldg6;

    invoke-direct {v2, p2}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {p0, v2}, Lod6;->d(Ldg6;)Lde6;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-boolean v0, p1, Leg6;->f:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1

    :catch_1
    move-exception p2

    .line 11
    new-instance v1, Lbe6;

    invoke-direct {v1, p2}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 12
    new-instance v1, Lbe6;

    invoke-direct {v1, p2}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 13
    iput-boolean v0, p1, Leg6;->f:Z

    return-object p2

    .line 14
    :cond_0
    :try_start_2
    new-instance v1, Lbe6;

    invoke-direct {v1, p2}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    iput-boolean v0, p1, Leg6;->f:Z

    .line 16
    throw p2
.end method

.method public d(Ldg6;)Lde6;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldg6<",
            "TT;>;)",
            "Lde6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lod6;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde6;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lod6;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lod6;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lod6$a;

    if-eqz v2, :cond_2

    return-object v2

    .line 6
    :cond_2
    :try_start_0
    new-instance v2, Lod6$a;

    invoke-direct {v2}, Lod6$a;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lod6;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lee6;

    .line 9
    invoke-interface {v4, p0, p1}, Lee6;->b(Lod6;Ldg6;)Lde6;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v3, v2, Lod6$a;->a:Lde6;

    if-nez v3, :cond_5

    .line 11
    iput-object v4, v2, Lod6$a;->a:Lde6;

    .line 12
    iget-object v2, p0, Lod6;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 14
    iget-object p1, p0, Lod6;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    .line 15
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 16
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.6) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 18
    iget-object p1, p0, Lod6;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 19
    :cond_7
    throw v2
.end method

.method public e(Lee6;Ldg6;)Lde6;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lee6;",
            "Ldg6<",
            "TT;>;)",
            "Lde6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lod6;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lod6;->d:Ljf6;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lod6;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lee6;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v2, p0, p2}, Lee6;->b(Lod6;Ldg6;)Lde6;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/io/Reader;)Leg6;
    .locals 1

    .line 1
    new-instance v0, Leg6;

    invoke-direct {v0, p1}, Leg6;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, v0, Leg6;->f:Z

    return-object v0
.end method

.method public g(Ljava/io/Writer;)Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lgg6;

    invoke-direct {v0, p1}, Lgg6;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, v0, Lgg6;->m:Z

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lvd6;->a:Lvd6;

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lod6;->g(Ljava/io/Writer;)Lgg6;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p1, v1}, Lod6;->i(Ltd6;Lgg6;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lud6;

    invoke-direct {v0, p1}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 9
    :try_start_1
    invoke-virtual {p0, v1}, Lod6;->g(Ljava/io/Writer;)Lgg6;

    move-result-object v2

    .line 10
    invoke-virtual {p0, p1, v0, v2}, Lod6;->j(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgg6;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 12
    new-instance v0, Lud6;

    invoke-direct {v0, p1}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i(Ltd6;Lgg6;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lud6;
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Lgg6;->j:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p2, Lgg6;->j:Z

    .line 3
    iget-boolean v1, p2, Lgg6;->k:Z

    .line 4
    iget-boolean v2, p0, Lod6;->f:Z

    .line 5
    iput-boolean v2, p2, Lgg6;->k:Z

    .line 6
    iget-boolean v2, p2, Lgg6;->m:Z

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, p2, Lgg6;->m:Z

    .line 8
    :try_start_0
    sget-object v3, Luf6;->X:Lde6;

    invoke-virtual {v3, p2, p1}, Lde6;->b(Lgg6;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-boolean v0, p2, Lgg6;->j:Z

    .line 10
    iput-boolean v1, p2, Lgg6;->k:Z

    .line 11
    iput-boolean v2, p2, Lgg6;->m:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    throw v3

    :catch_1
    move-exception p1

    .line 15
    new-instance v3, Lud6;

    invoke-direct {v3, p1}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    iput-boolean v0, p2, Lgg6;->j:Z

    .line 17
    iput-boolean v1, p2, Lgg6;->k:Z

    .line 18
    iput-boolean v2, p2, Lgg6;->m:Z

    .line 19
    throw p1
.end method

.method public j(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgg6;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lud6;
        }
    .end annotation

    .line 1
    new-instance v0, Ldg6;

    invoke-direct {v0, p2}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 2
    invoke-virtual {p0, v0}, Lod6;->d(Ldg6;)Lde6;

    move-result-object p2

    .line 3
    iget-boolean v0, p3, Lgg6;->j:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p3, Lgg6;->j:Z

    .line 5
    iget-boolean v1, p3, Lgg6;->k:Z

    .line 6
    iget-boolean v2, p0, Lod6;->f:Z

    .line 7
    iput-boolean v2, p3, Lgg6;->k:Z

    .line 8
    iget-boolean v2, p3, Lgg6;->m:Z

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p3, Lgg6;->m:Z

    .line 10
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lde6;->b(Lgg6;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v0, p3, Lgg6;->j:Z

    .line 12
    iput-boolean v1, p3, Lgg6;->k:Z

    .line 13
    iput-boolean v2, p3, Lgg6;->m:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Lud6;

    invoke-direct {p2, p1}, Lud6;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    iput-boolean v0, p3, Lgg6;->j:Z

    .line 19
    iput-boolean v1, p3, Lgg6;->k:Z

    .line 20
    iput-boolean v2, p3, Lgg6;->m:Z

    .line 21
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lod6;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lod6;->c:Lne6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
