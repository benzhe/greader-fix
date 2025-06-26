.class public abstract Ls63;
.super Lb53;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls63$a;,
        Ls63$f;,
        Ls63$c;,
        Ls63$d;,
        Ls63$b;,
        Ls63$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ls63<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ls63$b<",
        "TMessageType;TBuilderType;>;>",
        "Lb53<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzitp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ls63<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzitn:Lo93;

.field private zzito:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ls63;->zzitp:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb53;-><init>()V

    .line 2
    sget-object v0, Lo93;->f:Lo93;

    iput-object v0, p0, Ls63;->zzitn:Lo93;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ls63;->zzito:I

    return-void
.end method

.method public static k(Ls63;)Ls63;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ls63;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lm93;

    invoke-direct {p0}, Lm93;-><init>()V

    .line 3
    new-instance v0, Le73;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Le73;-><init>(Ljava/lang/String;)V

    .line 4
    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static l(Ls63;Lk53;Le63;)Ls63;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "TT;*>;>(TT;",
            "Lk53;",
            "Le63;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Ls63;->t(Ls63;Lk53;Le63;)Ls63;

    move-result-object p0

    invoke-static {p0}, Ls63;->k(Ls63;)Ls63;

    return-object p0
.end method

.method public static m(Ls63;Lu53;Le63;)Ls63;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "TT;*>;>(TT;",
            "Lu53;",
            "Le63;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Ls63;

    .line 3
    :try_start_0
    sget-object v0, Lq83;->c:Lq83;

    .line 4
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lu53;->d:Lz53;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lz53;

    invoke-direct {v1, p1}, Lz53;-><init>(Lu53;)V

    .line 7
    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lw83;->h(Ljava/lang/Object;Lz53;Le63;)V

    .line 8
    invoke-interface {v0, p0}, Lw83;->j(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 9
    :goto_1
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Le73;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Le73;

    throw p0

    .line 11
    :cond_1
    throw p0

    .line 12
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Le73;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Le73;

    throw p0

    .line 14
    :cond_2
    new-instance p1, Le73;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Le73;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n(Ls63;[BILe63;)Ls63;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "TT;*>;>(TT;[BII",
            "Le63;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Ls63;

    .line 3
    :try_start_0
    sget-object v0, Lq83;->c:Lq83;

    .line 4
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v6

    const/4 v3, 0x0

    .line 5
    new-instance v5, Lg53;

    invoke-direct {v5, p3}, Lg53;-><init>(Le63;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lw83;->g(Ljava/lang/Object;[BIILg53;)V

    .line 6
    invoke-interface {v6, p0}, Lw83;->j(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lb53;->zziop:I

    if-nez p1, :cond_0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-static {}, Le73;->a()Le73;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Le73;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Le73;

    throw p0

    .line 12
    :cond_1
    new-instance p1, Le73;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Le73;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static o(Lx63;)Lx63;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lv63;

    .line 2
    iget v0, v0, Lv63;->g:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 3
    :goto_0
    check-cast p0, Lv63;

    invoke-virtual {p0, v0}, Lv63;->n(I)Lx63;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lb73;)Lb73;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lb73<",
            "TE;>;)",
            "Lb73<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lb73;->D(I)Lb73;

    move-result-object p0

    return-object p0
.end method

.method public static varargs r(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static s(Ljava/lang/Class;Ls63;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ls63;->zzitp:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static t(Ls63;Lk53;Le63;)Ls63;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "TT;*>;>(TT;",
            "Lk53;",
            "Le63;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lk53;->v()Lu53;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Ls63;->m(Ls63;Lu53;Le63;)Ls63;

    move-result-object p0
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p1, p2}, Lu53;->w(I)V
    :try_end_1
    .catch Le73; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    throw p0
    :try_end_2
    .catch Le73; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 5
    throw p0
.end method

.method public static w(Ljava/lang/Class;)Ls63;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ls63<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls63;->zzitp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls63;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget-object v0, Ls63;->zzitp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls63;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lr93;->m(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls63;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v2}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ls63;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Ls63;->zzitp:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final synthetic c()La53;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls63$b;

    .line 3
    invoke-virtual {v0, p0}, Ls63$b;->m(Ls63;)Ls63$b;

    return-object v0
.end method

.method public final synthetic d()La53;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls63$b;

    return-object v0
.end method

.method public final synthetic e()Le83;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls63;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    sget-object v0, Lq83;->c:Lq83;

    .line 3
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    check-cast p1, Ls63;

    invoke-interface {v0, p0, p1}, Lw83;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 2

    .line 1
    iget v0, p0, Ls63;->zzito:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lq83;->c:Lq83;

    .line 3
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    invoke-interface {v0, p0}, Lw83;->k(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ls63;->zzito:I

    .line 4
    :cond_0
    iget v0, p0, Ls63;->zzito:I

    return v0
.end method

.method public final h(Lb63;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lq83;->c:Lq83;

    .line 2
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lb63;->a:Ld63;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ld63;

    invoke-direct {v1, p1}, Ld63;-><init>(Lb63;)V

    .line 5
    :goto_0
    invoke-interface {v0, p0, v1}, Lw83;->f(Ljava/lang/Object;Lga3;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lb53;->zziop:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lq83;->c:Lq83;

    .line 3
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    invoke-interface {v0, p0}, Lw83;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lb53;->zziop:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Ls63;->zzito:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lq83;->c:Lq83;

    .line 4
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    invoke-interface {v0, p0}, Lw83;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 5
    :goto_0
    invoke-virtual {p0, v2, v3, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v0
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls63;->zzito:I

    return-void
.end method

.method public abstract q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v1, v0}, Lc50;->g2(Le83;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ls63$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ls63<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Ls63$b<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls63$b;

    return-object v0
.end method

.method public final v()Ls63$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls63$b;

    .line 3
    invoke-virtual {v0, p0}, Ls63$b;->m(Ls63;)Ls63$b;

    return-object v0
.end method
