.class public final Lka4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lka4;


# instance fields
.field public final a:Loa4;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lna4<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lka4;

    .line 1
    invoke-direct {v0}, Lka4;-><init>()V

    sput-object v0, Lka4;->c:Lka4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lka4;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lw94;

    .line 2
    invoke-direct {v0}, Lw94;-><init>()V

    iput-object v0, p0, Lka4;->a:Loa4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lna4;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lna4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lj94;->a:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lka4;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna4;

    if-nez v0, :cond_c

    iget-object v0, p0, Lka4;->a:Loa4;

    .line 5
    check-cast v0, Lw94;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lc94;

    sget-object v2, Lpa4;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lpa4;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, v0, Lw94;->a:Lca4;

    .line 12
    invoke-interface {v0, p1}, Lca4;->b(Ljava/lang/Class;)Lba4;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Lba4;->a()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    sget-object v0, Lpa4;->d:Lab4;

    .line 16
    sget-object v1, Ls84;->a:Lq84;

    sget-object v1, Ls84;->a:Lq84;

    .line 17
    invoke-interface {v2}, Lba4;->b()Lda4;

    move-result-object v2

    .line 18
    new-instance v3, Lga4;

    .line 19
    invoke-direct {v3, v0, v1, v2}, Lga4;-><init>(Lab4;Lq84;Lda4;)V

    :goto_1
    move-object v0, v3

    goto/16 :goto_2

    .line 20
    :cond_2
    sget-object v0, Lpa4;->b:Lab4;

    .line 21
    sget-object v1, Ls84;->b:Lq84;

    if-eqz v1, :cond_3

    .line 22
    invoke-interface {v2}, Lba4;->b()Lda4;

    move-result-object v2

    .line 23
    new-instance v3, Lga4;

    .line 24
    invoke-direct {v3, v0, v1, v2}, Lga4;-><init>(Lab4;Lq84;Lda4;)V

    goto :goto_1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 28
    invoke-interface {v2}, Lba4;->c()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 29
    sget-object v3, Lia4;->b:Lha4;

    .line 30
    sget-object v4, Ls94;->b:Ls94;

    .line 31
    sget-object v5, Lpa4;->d:Lab4;

    .line 32
    sget-object v0, Ls84;->a:Lq84;

    sget-object v6, Ls84;->a:Lq84;

    .line 33
    sget-object v7, Laa4;->b:Lz94;

    .line 34
    invoke-static/range {v2 .. v7}, Lfa4;->B(Lba4;Lha4;Ls94;Lab4;Lq84;Lz94;)Lfa4;

    move-result-object v0

    goto :goto_2

    .line 35
    :cond_6
    sget-object v3, Lia4;->b:Lha4;

    .line 36
    sget-object v4, Ls94;->b:Ls94;

    .line 37
    sget-object v5, Lpa4;->d:Lab4;

    const/4 v6, 0x0

    .line 38
    sget-object v7, Laa4;->b:Lz94;

    .line 39
    invoke-static/range {v2 .. v7}, Lfa4;->B(Lba4;Lha4;Ls94;Lab4;Lq84;Lz94;)Lfa4;

    move-result-object v0

    goto :goto_2

    .line 40
    :cond_7
    invoke-interface {v2}, Lba4;->c()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 41
    sget-object v0, Lia4;->a:Lha4;

    .line 42
    sget-object v4, Ls94;->a:Ls94;

    .line 43
    sget-object v5, Lpa4;->b:Lab4;

    .line 44
    sget-object v6, Ls84;->b:Lq84;

    if-eqz v6, :cond_9

    .line 45
    sget-object v7, Laa4;->a:Lz94;

    move-object v3, v0

    .line 46
    invoke-static/range {v2 .. v7}, Lfa4;->B(Lba4;Lha4;Ls94;Lab4;Lq84;Lz94;)Lfa4;

    move-result-object v0

    goto :goto_2

    .line 47
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_a
    sget-object v3, Lia4;->a:Lha4;

    .line 50
    sget-object v4, Ls94;->a:Ls94;

    .line 51
    sget-object v5, Lpa4;->c:Lab4;

    const/4 v6, 0x0

    .line 52
    sget-object v7, Laa4;->a:Lz94;

    .line 53
    invoke-static/range {v2 .. v7}, Lfa4;->B(Lba4;Lha4;Ls94;Lab4;Lq84;Lz94;)Lfa4;

    move-result-object v0

    .line 54
    :goto_2
    iget-object v1, p0, Lka4;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lna4;

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    return-object p1

    :cond_c
    :goto_3
    return-object v0
.end method
