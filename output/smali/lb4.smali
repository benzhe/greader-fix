.class public final Llb4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final c:Z

.field public static final d:Z

.field public static final e:Lkb4;

.field public static final f:Z

.field public static final g:Z

.field public static final h:J

.field public static final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    invoke-static {}, Llb4;->t()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Llb4;->a:Lsun/misc/Unsafe;

    .line 2
    sget-object v7, Lv74;->a:Ljava/lang/Class;

    .line 3
    sput-object v7, Llb4;->b:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v7}, Llb4;->c(Ljava/lang/Class;)Z

    move-result v7

    sput-boolean v7, Llb4;->c:Z

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5
    invoke-static {v8}, Llb4;->c(Ljava/lang/Class;)Z

    move-result v8

    sput-boolean v8, Llb4;->d:Z

    const/4 v9, 0x0

    if-nez v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lv74;->a()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_1

    new-instance v9, Lib4;

    .line 7
    invoke-direct {v9, v6}, Lib4;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_3

    new-instance v9, Lhb4;

    .line 8
    invoke-direct {v9, v6}, Lhb4;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_2
    new-instance v9, Ljb4;

    .line 9
    invoke-direct {v9, v6}, Ljb4;-><init>(Lsun/misc/Unsafe;)V

    .line 10
    :cond_3
    :goto_0
    sput-object v9, Llb4;->e:Lkb4;

    const/4 v6, 0x0

    if-nez v9, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v9}, Lkb4;->j()Z

    move-result v7

    .line 12
    :goto_1
    sput-boolean v7, Llb4;->f:Z

    if-nez v9, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {v9}, Lkb4;->i()Z

    move-result v7

    .line 14
    :goto_2
    sput-boolean v7, Llb4;->g:Z

    const-class v7, [B

    .line 15
    invoke-static {v7}, Llb4;->a(Ljava/lang/Class;)I

    move-result v7

    int-to-long v7, v7

    sput-wide v7, Llb4;->h:J

    .line 16
    invoke-static {v5}, Llb4;->a(Ljava/lang/Class;)I

    .line 17
    invoke-static {v5}, Llb4;->b(Ljava/lang/Class;)I

    .line 18
    invoke-static {v4}, Llb4;->a(Ljava/lang/Class;)I

    .line 19
    invoke-static {v4}, Llb4;->b(Ljava/lang/Class;)I

    .line 20
    invoke-static {v3}, Llb4;->a(Ljava/lang/Class;)I

    .line 21
    invoke-static {v3}, Llb4;->b(Ljava/lang/Class;)I

    .line 22
    invoke-static {v2}, Llb4;->a(Ljava/lang/Class;)I

    .line 23
    invoke-static {v2}, Llb4;->b(Ljava/lang/Class;)I

    .line 24
    invoke-static {v1}, Llb4;->a(Ljava/lang/Class;)I

    .line 25
    invoke-static {v1}, Llb4;->b(Ljava/lang/Class;)I

    .line 26
    invoke-static {v0}, Llb4;->a(Ljava/lang/Class;)I

    .line 27
    invoke-static {v0}, Llb4;->b(Ljava/lang/Class;)I

    .line 28
    invoke-static {}, Llb4;->d()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    .line 29
    invoke-virtual {v9, v0}, Lkb4;->k(Ljava/lang/reflect/Field;)J

    .line 30
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    const/4 v6, 0x1

    :cond_7
    sput-boolean v6, Llb4;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Llb4;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0}, Lkb4;->l(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Llb4;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0}, Lkb4;->m(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, [B

    invoke-static {}, Lv74;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Llb4;->b:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "peekLong"

    .line 2
    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v8, "pokeLong"

    .line 3
    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v9, "pokeInt"

    .line 4
    invoke-virtual {v1, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v5, v7, v6

    const-string v5, "peekInt"

    .line 5
    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    .line 6
    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v2

    const-string v7, "peekByte"

    .line 7
    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v0, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    const-string v9, "pokeByteArray"

    .line 8
    invoke-virtual {v1, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v2

    aput-object v0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    const-string p0, "peekByteArray"

    .line 9
    invoke-virtual {v1, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v2
.end method

.method public static d()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Lv74;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v2, "effectiveDirectAddress"

    .line 2
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    .line 3
    :cond_1
    :goto_1
    const-class v0, Ljava/nio/Buffer;

    const-string v2, "address"

    .line 4
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static e(Ljava/lang/Object;J)B
    .locals 3

    sget-object v0, Llb4;->e:Lkb4;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lkb4;->n(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static f(Ljava/lang/Object;J)B
    .locals 3

    sget-object v0, Llb4;->e:Lkb4;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lkb4;->n(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static g(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v2, p0, v0, v1}, Lkb4;->n(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v2, p0, v0, v1, p1}, Lkb4;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static h(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v2, p0, v0, v1}, Lkb4;->n(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v2, p0, v0, v1, p1}, Lkb4;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Llb4;->a:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static j(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lkb4;->n(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lkb4;->p(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static l(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Llb4;->e:Lkb4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lkb4;->q(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static m(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lkb4;->c(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lkb4;->e(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static o(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lkb4;->g(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static p(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Llb4;->e:Lkb4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lkb4;->h(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static q(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Llb4;->e:Lkb4;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lkb4;->r(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static r([BJ)B
    .locals 3

    sget-object v0, Llb4;->e:Lkb4;

    sget-wide v1, Llb4;->h:J

    add-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Lkb4;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static s([BJB)V
    .locals 3

    sget-object v0, Llb4;->e:Lkb4;

    sget-wide v1, Llb4;->h:J

    add-long/2addr v1, p1

    .line 1
    invoke-virtual {v0, p0, v1, v2, p3}, Lkb4;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static t()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lgb4;

    invoke-direct {v0}, Lgb4;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic u(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Llb4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x47

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-static {v3, v2, p0}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
