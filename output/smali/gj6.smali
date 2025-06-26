.class public abstract Lgj6;
.super Lii6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgj6$b;,
        Lgj6$e;,
        Lgj6$d;,
        Lgj6$c;,
        Lgj6$a;,
        Lgj6$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lgj6<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lgj6$a<",
        "TMessageType;TBuilderType;>;>",
        "Lii6<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lgj6<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:Lzk6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgj6;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lii6;-><init>()V

    .line 2
    sget-object v0, Lzk6;->f:Lzk6;

    iput-object v0, p0, Lgj6;->unknownFields:Lzk6;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lgj6;->memoizedSerializedSize:I

    return-void
.end method

.method public static p(Lgj6;)Lgj6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgj6<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lgj6;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lxk6;

    invoke-direct {p0}, Lxk6;-><init>()V

    .line 3
    new-instance v0, Lkj6;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkj6;-><init>(Ljava/lang/String;)V

    .line 4
    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static s(Ljava/lang/Class;)Lgj6;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgj6<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj6;

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
    sget-object v0, Lgj6;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj6;

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
    invoke-static {p0}, Lcl6;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgj6;

    invoke-virtual {v0}, Lgj6;->t()Lgj6;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lgj6;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs u(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static v(Ljj6$d;)Ljj6$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj6$d<",
            "TE;>;)",
            "Ljj6$d<",
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
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Ljj6$d;->E(I)Ljj6$d;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lgj6;[B)Lgj6;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgj6<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {}, Lyi6;->a()Lyi6;

    move-result-object v1

    .line 3
    sget-object v2, Lgj6$f;->h:Lgj6$f;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v3}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, Lgj6;

    .line 6
    :try_start_0
    sget-object v2, Llk6;->c:Llk6;

    .line 7
    invoke-virtual {v2, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v8

    const/4 v2, 0x0

    add-int v6, v2, v0

    .line 8
    new-instance v7, Lni6;

    invoke-direct {v7, v1}, Lni6;-><init>(Lyi6;)V

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lqk6;->i(Ljava/lang/Object;[BIILni6;)V

    .line 9
    invoke-interface {v8, p0}, Lqk6;->f(Ljava/lang/Object;)V

    .line 10
    iget p1, p0, Lii6;->memoizedHashCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 11
    invoke-static {p0}, Lgj6;->p(Lgj6;)Lgj6;

    return-object p0

    .line 12
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    :catch_0
    invoke-static {}, Lkj6;->h()Lkj6;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lkj6;

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lkj6;

    throw p0

    .line 16
    :cond_1
    new-instance p1, Lkj6;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkj6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Lgj6;Lri6;Lyi6;)Lgj6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgj6<",
            "TT;*>;>(TT;",
            "Lri6;",
            "Lyi6;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6$f;->h:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lgj6;

    .line 4
    :try_start_0
    sget-object v0, Llk6;->c:Llk6;

    .line 5
    invoke-virtual {v0, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lri6;->d:Lsi6;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lsi6;

    invoke-direct {v1, p1}, Lsi6;-><init>(Lri6;)V

    .line 8
    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lqk6;->h(Ljava/lang/Object;Lok6;Lyi6;)V

    .line 9
    invoke-interface {v0, p0}, Lqk6;->f(Ljava/lang/Object;)V
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

    .line 10
    :goto_1
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lkj6;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lkj6;

    throw p0

    .line 12
    :cond_1
    throw p0

    .line 13
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lkj6;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lkj6;

    throw p0

    .line 15
    :cond_2
    new-instance p1, Lkj6;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkj6;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static z(Ljava/lang/Class;Lgj6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgj6<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()Lgj6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6$f;->i:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lgj6$a;

    .line 4
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 5
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    invoke-virtual {v0, v1, p0}, Lgj6$a;->q(Lgj6;Lgj6;)V

    return-object v0
.end method

.method public bridge synthetic c()Lak6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6;->t()Lgj6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lak6$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6;->A()Lgj6$a;

    move-result-object v0

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
    sget-object v0, Llk6;->c:Llk6;

    .line 3
    invoke-virtual {v0, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    check-cast p1, Lgj6;

    invoke-interface {v0, p0, p1}, Lqk6;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lti6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Llk6;->c:Llk6;

    .line 2
    invoke-virtual {v0, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lti6;->a:Lui6;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lui6;

    invoke-direct {v1, p1}, Lui6;-><init>(Lti6;)V

    .line 5
    :goto_0
    invoke-interface {v0, p0, v1}, Lqk6;->e(Ljava/lang/Object;Lhl6;)V

    return-void
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, Lgj6;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Llk6;->c:Llk6;

    .line 3
    invoke-virtual {v0, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    invoke-interface {v0, p0}, Lqk6;->j(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lgj6;->memoizedSerializedSize:I

    .line 4
    :cond_0
    iget v0, p0, Lgj6;->memoizedSerializedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lii6;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Llk6;->c:Llk6;

    .line 3
    invoke-virtual {v0, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    invoke-interface {v0, p0}, Lqk6;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lii6;->memoizedHashCode:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    sget-object v0, Lgj6$f;->e:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Llk6;->c:Llk6;

    .line 5
    invoke-virtual {v0, p0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    invoke-interface {v0, p0}, Lqk6;->g(Ljava/lang/Object;)Z

    move-result v2

    .line 6
    sget-object v0, Lgj6$f;->f:Lgj6$f;

    if-eqz v2, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 7
    :goto_0
    invoke-virtual {p0, v0, v3, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v2
.end method

.method public bridge synthetic j()Lak6$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6;->w()Lgj6$a;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lik6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lik6<",
            "TMessageType;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6$f;->k:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lik6;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lgj6;->memoizedSerializedSize:I

    return v0
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgj6;->memoizedSerializedSize:I

    return-void
.end method

.method public final q()Lgj6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lgj6<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lgj6$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6$f;->i:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lgj6$a;

    return-object v0
.end method

.method public abstract r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final t()Lgj6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6$f;->j:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lgj6;

    return-object v0
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
    invoke-static {p0, v1, v0}, Ln56;->G1(Lak6;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lgj6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lgj6$f;->i:Lgj6$f;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lgj6$a;

    return-object v0
.end method
