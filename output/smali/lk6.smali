.class public final Llk6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Llk6;


# instance fields
.field public final a:Lrk6;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lqk6<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llk6;

    invoke-direct {v0}, Llk6;-><init>()V

    sput-object v0, Llk6;->c:Llk6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Llk6;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Lsj6;

    invoke-direct {v0}, Lsj6;-><init>()V

    iput-object v0, p0, Llk6;->a:Lrk6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lqk6;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lqk6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljj6;->a:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Llk6;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqk6;

    if-nez v0, :cond_b

    .line 4
    iget-object v0, p0, Llk6;->a:Lrk6;

    check-cast v0, Lsj6;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lgj6;

    sget-object v2, Lsk6;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lsk6;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, v0, Lsj6;->a:Lzj6;

    invoke-interface {v0, p1}, Lzj6;->a(Ljava/lang/Class;)Lyj6;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lyj6;->a()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lsk6;->d:Lyk6;

    .line 14
    sget-object v1, Lbj6;->a:Lzi6;

    sget-object v1, Lbj6;->a:Lzi6;

    .line 15
    invoke-interface {v2}, Lyj6;->b()Lak6;

    move-result-object v2

    .line 16
    new-instance v3, Ldk6;

    invoke-direct {v3, v0, v1, v2}, Ldk6;-><init>(Lyk6;Lzi6;Lak6;)V

    :goto_1
    move-object v0, v3

    goto/16 :goto_4

    .line 17
    :cond_2
    sget-object v0, Lsk6;->b:Lyk6;

    .line 18
    sget-object v1, Lbj6;->b:Lzi6;

    if-eqz v1, :cond_3

    .line 19
    invoke-interface {v2}, Lyj6;->b()Lak6;

    move-result-object v2

    .line 20
    new-instance v3, Ldk6;

    invoke-direct {v3, v0, v1, v2}, Ldk6;-><init>(Lyk6;Lzi6;Lak6;)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    sget-object v0, Lkk6;->e:Lkk6;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 23
    invoke-interface {v2}, Lyj6;->c()Lkk6;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 24
    sget-object v3, Lgk6;->b:Lek6;

    .line 25
    sget-object v4, Lqj6;->b:Lqj6;

    .line 26
    sget-object v5, Lsk6;->d:Lyk6;

    .line 27
    sget-object v0, Lbj6;->a:Lzi6;

    sget-object v6, Lbj6;->a:Lzi6;

    .line 28
    sget-object v7, Lxj6;->b:Lvj6;

    .line 29
    invoke-static/range {v2 .. v7}, Lck6;->B(Lyj6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;

    move-result-object v0

    goto :goto_4

    .line 30
    :cond_6
    sget-object v3, Lgk6;->b:Lek6;

    .line 31
    sget-object v4, Lqj6;->b:Lqj6;

    .line 32
    sget-object v5, Lsk6;->d:Lyk6;

    const/4 v6, 0x0

    .line 33
    sget-object v7, Lxj6;->b:Lvj6;

    .line 34
    invoke-static/range {v2 .. v7}, Lck6;->B(Lyj6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;

    move-result-object v0

    goto :goto_4

    .line 35
    :cond_7
    invoke-interface {v2}, Lyj6;->c()Lkk6;

    move-result-object v1

    if-ne v1, v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_a

    .line 36
    sget-object v0, Lgk6;->a:Lek6;

    .line 37
    sget-object v4, Lqj6;->a:Lqj6;

    .line 38
    sget-object v5, Lsk6;->b:Lyk6;

    .line 39
    sget-object v6, Lbj6;->b:Lzi6;

    if-eqz v6, :cond_9

    .line 40
    sget-object v7, Lxj6;->a:Lvj6;

    move-object v3, v0

    .line 41
    invoke-static/range {v2 .. v7}, Lck6;->B(Lyj6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;

    move-result-object v0

    goto :goto_4

    .line 42
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_a
    sget-object v3, Lgk6;->a:Lek6;

    .line 44
    sget-object v4, Lqj6;->a:Lqj6;

    .line 45
    sget-object v5, Lsk6;->c:Lyk6;

    const/4 v6, 0x0

    .line 46
    sget-object v7, Lxj6;->a:Lvj6;

    .line 47
    invoke-static/range {v2 .. v7}, Lck6;->B(Lyj6;Lek6;Lqj6;Lyk6;Lzi6;Lvj6;)Lck6;

    move-result-object v0

    .line 48
    :goto_4
    iget-object v1, p0, Llk6;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqk6;

    if-eqz p1, :cond_b

    move-object v0, p1

    :cond_b
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lqk6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lqk6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Llk6;->a(Ljava/lang/Class;)Lqk6;

    move-result-object p1

    return-object p1
.end method
