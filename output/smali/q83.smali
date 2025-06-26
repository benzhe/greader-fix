.class public final Lq83;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lq83;


# instance fields
.field public final a:Lz83;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lw83<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq83;

    invoke-direct {v0}, Lq83;-><init>()V

    sput-object v0, Lq83;->c:Lq83;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lq83;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ls73;

    invoke-direct {v0}, Ls73;-><init>()V

    iput-object v0, p0, Lq83;->a:Lz83;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lw83;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lw83<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq83;->b(Ljava/lang/Class;)Lw83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;)Lw83;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lw83<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu63;->a:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lq83;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw83;

    if-nez v0, :cond_b

    .line 4
    iget-object v0, p0, Lq83;->a:Lz83;

    check-cast v0, Ls73;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Ls63;

    sget-object v2, Ly83;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ly83;->a:Ljava/lang/Class;

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
    iget-object v0, v0, Ls73;->a:Lc83;

    invoke-interface {v0, p1}, Lc83;->a(Ljava/lang/Class;)Ld83;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ld83;->a()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Ly83;->d:Ll93;

    .line 14
    sget-object v1, Lh63;->a:Lg63;

    sget-object v1, Lh63;->a:Lg63;

    .line 15
    invoke-interface {v2}, Ld83;->b()Le83;

    move-result-object v2

    .line 16
    new-instance v3, Li83;

    invoke-direct {v3, v0, v1, v2}, Li83;-><init>(Ll93;Lg63;Le83;)V

    :goto_1
    move-object v0, v3

    goto/16 :goto_2

    .line 17
    :cond_2
    sget-object v0, Ly83;->b:Ll93;

    .line 18
    sget-object v1, Lh63;->b:Lg63;

    if-eqz v1, :cond_3

    .line 19
    invoke-interface {v2}, Ld83;->b()Le83;

    move-result-object v2

    .line 20
    new-instance v3, Li83;

    invoke-direct {v3, v0, v1, v2}, Li83;-><init>(Ll93;Lg63;Le83;)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 23
    invoke-interface {v2}, Ld83;->c()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 24
    sget-object v3, Lm83;->b:Lk83;

    .line 25
    sget-object v4, Lo73;->b:Lo73;

    .line 26
    sget-object v5, Ly83;->d:Ll93;

    .line 27
    sget-object v0, Lh63;->a:Lg63;

    sget-object v6, Lh63;->a:Lg63;

    .line 28
    sget-object v7, La83;->b:Ly73;

    .line 29
    invoke-static/range {v2 .. v7}, Lg83;->o(Ld83;Lk83;Lo73;Ll93;Lg63;Ly73;)Lg83;

    move-result-object v0

    goto :goto_2

    .line 30
    :cond_6
    sget-object v3, Lm83;->b:Lk83;

    .line 31
    sget-object v4, Lo73;->b:Lo73;

    .line 32
    sget-object v5, Ly83;->d:Ll93;

    const/4 v6, 0x0

    .line 33
    sget-object v7, La83;->b:Ly73;

    .line 34
    invoke-static/range {v2 .. v7}, Lg83;->o(Ld83;Lk83;Lo73;Ll93;Lg63;Ly73;)Lg83;

    move-result-object v0

    goto :goto_2

    .line 35
    :cond_7
    invoke-interface {v2}, Ld83;->c()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 36
    sget-object v0, Lm83;->a:Lk83;

    .line 37
    sget-object v4, Lo73;->a:Lo73;

    .line 38
    sget-object v5, Ly83;->b:Ll93;

    .line 39
    sget-object v6, Lh63;->b:Lg63;

    if-eqz v6, :cond_9

    .line 40
    sget-object v7, La83;->a:Ly73;

    move-object v3, v0

    .line 41
    invoke-static/range {v2 .. v7}, Lg83;->o(Ld83;Lk83;Lo73;Ll93;Lg63;Ly73;)Lg83;

    move-result-object v0

    goto :goto_2

    .line 42
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_a
    sget-object v3, Lm83;->a:Lk83;

    .line 44
    sget-object v4, Lo73;->a:Lo73;

    .line 45
    sget-object v5, Ly83;->c:Ll93;

    const/4 v6, 0x0

    .line 46
    sget-object v7, La83;->a:Ly73;

    .line 47
    invoke-static/range {v2 .. v7}, Lg83;->o(Ld83;Lk83;Lo73;Ll93;Lg63;Ly73;)Lg83;

    move-result-object v0

    .line 48
    :goto_2
    iget-object v1, p0, Lq83;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw83;

    if-eqz p1, :cond_b

    move-object v0, p1

    :cond_b
    return-object v0
.end method
