.class public final Lj67;
.super Ll47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj67$e;,
        Lj67$b;,
        Lj67$a;,
        Lj67$f;,
        Lj67$c;,
        Lj67$d;
    }
.end annotation


# static fields
.field public static A:Z

.field public static final B:Lj67$f;

.field public static C:Ljava/lang/String;

.field public static final t:Ljava/util/logging/Logger;

.field public static final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static y:Z

.field public static z:Z


# instance fields
.field public final a:Lt47;

.field public final b:Ljava/util/Random;

.field public volatile c:Lj67$a;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lj67$e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lx87$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx87$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final i:J

.field public final j:Lb57;

.field public final k:Lpd5;

.field public l:Lj67$c;

.field public m:Z

.field public n:Ljava/util/concurrent/Executor;

.field public final o:Z

.field public final p:Z

.field public final q:Ll47$g;

.field public r:Z

.field public s:Ll47$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lj67;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lj67;->t:Ljava/util/logging/Logger;

    .line 2
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "clientLanguage"

    const-string v4, "percentage"

    const-string v5, "clientHostname"

    const-string v6, "serviceConfig"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lj67;->u:Ljava/util/Set;

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v3, "true"

    .line 5
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lj67;->v:Ljava/lang/String;

    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v4, "false"

    .line 6
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lj67;->w:Ljava/lang/String;

    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    .line 7
    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lj67;->x:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lj67;->y:Z

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lj67;->z:Z

    .line 10
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lj67;->A:Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "k77"

    const/4 v4, 0x1

    .line 12
    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lj67$f;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj67$f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    invoke-interface {v0}, Lj67$f;->b()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 17
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 18
    invoke-interface {v0}, Lj67$f;->b()Ljava/lang/Throwable;

    move-result-object v0

    const-string v4, "JndiResourceResolverFactory not available, skipping."

    .line 19
    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 21
    sget-object v1, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 22
    sget-object v1, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 23
    sget-object v1, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :goto_0
    sput-object v2, Lj67;->B:Lj67$f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ll47$a;Lx87$c;Lpd5;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ll47$a;",
            "Lx87$c<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lpd5;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ll47;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lj67;->b:Ljava/util/Random;

    .line 3
    sget-object v0, Lj67$b;->e:Lj67$b;

    iput-object v0, p0, Lj67;->c:Lj67$a;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lj67;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "args"

    .line 5
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lj67;->h:Lx87$c;

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "//"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name"

    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Invalid DNS name: %s"

    invoke-static {v0, v3, p1}, Lc50;->o(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nameUri (%s) doesn\'t have an authority"

    invoke-static {p1, v0, p3}, Lc50;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lj67;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj67;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 12
    iget p1, p2, Ll47$a;->a:I

    .line 13
    iput p1, p0, Lj67;->g:I

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lj67;->g:I

    .line 15
    :goto_1
    iget-object p1, p2, Ll47$a;->b:Lt47;

    const-string p3, "proxyDetector"

    .line 16
    invoke-static {p1, p3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lj67;->a:Lt47;

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, "networkaddress.cache.ttl"

    .line 17
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v5, 0x1e

    if-eqz p3, :cond_3

    .line 18
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 19
    :catch_0
    sget-object p5, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p3, v7, v1

    const/4 p1, 0x2

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v7, p1

    const-string p1, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    .line 21
    invoke-virtual {p5, v0, p1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    cmp-long p1, v5, v3

    if-lez p1, :cond_4

    .line 22
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    goto :goto_3

    :cond_4
    move-wide v3, v5

    .line 23
    :goto_3
    iput-wide v3, p0, Lj67;->i:J

    const-string p1, "stopwatch"

    .line 24
    invoke-static {p4, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lj67;->k:Lpd5;

    .line 25
    iget-object p1, p2, Ll47$a;->c:Lb57;

    const-string p3, "syncContext"

    .line 26
    invoke-static {p1, p3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lj67;->j:Lb57;

    .line 27
    iget-object p1, p2, Ll47$a;->g:Ljava/util/concurrent/Executor;

    .line 28
    iput-object p1, p0, Lj67;->n:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 29
    :goto_4
    iput-boolean v1, p0, Lj67;->o:Z

    .line 30
    iput-boolean p6, p0, Lj67;->p:Z

    .line 31
    iget-object p1, p2, Ll47$a;->d:Ll47$g;

    const-string p2, "serviceConfigParser"

    .line 32
    invoke-static {p1, p2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lj67;->q:Ll47$g;

    return-void
.end method

.method public static e(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    sget-object v2, Lj67;->u:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v2, v3, v1}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "clientLanguage"

    .line 3
    invoke-static {p0, v0}, Lm77;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "java"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "percentage"

    .line 7
    invoke-static {p0, v0}, Lm77;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-ltz v4, :cond_4

    if-gt v4, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const-string v7, "Bad percentage: %s"

    .line 9
    invoke-static {v6, v7, v0}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-lt p1, v4, :cond_5

    return-object v1

    :cond_5
    const-string p1, "clientHostname"

    .line 11
    invoke-static {p0, p1}, Lm77;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    return-object v1

    :cond_8
    const-string p1, "serviceConfig"

    .line 15
    invoke-static {p0, p1}, Lm77;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_9

    return-object p2

    .line 16
    :cond_9
    new-instance p2, Ltd5;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    const-string p0, "key \'%s\' missing in \'%s\'"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ltd5;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "grpc_config="

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "Ignoring non service config {0}"

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Ll77;->a:Ljava/util/logging/Logger;

    const-string v2, "Failed to close"

    .line 7
    new-instance v3, Leg6;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Leg6;-><init>(Ljava/io/Reader;)V

    .line 8
    :try_start_0
    invoke-static {v3}, Ll77;->a(Leg6;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v3}, Leg6;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 10
    sget-object v4, Ll77;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    invoke-static {v1}, Lm77;->a(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Leg6;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 16
    sget-object v1, Ll77;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_2
    throw p0

    :cond_2
    return-object v0
.end method

.method public static h(Lj67$a;Lj67$e;ZZLjava/lang/String;)Lj67$c;
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :try_start_0
    move-object v4, p0

    check-cast v4, Lj67$b;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    .line 7
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_grpclb._tcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-interface {p1, p0, v5}, Lj67$e;->b(Lj67$a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    move-object p0, v3

    :goto_2
    if-eqz p3, :cond_4

    const/4 p3, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_1

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 p2, 0x1

    :goto_4
    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    const/4 p3, 0x0

    :goto_5
    if-nez p3, :cond_4

    .line 9
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_grpc_config."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lj67$e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v3, p1

    :cond_4
    :goto_6
    move-object v7, v3

    move-object v3, p0

    move-object p0, v7

    goto :goto_7

    :cond_5
    move-object p0, v3

    :goto_7
    const-string p1, "ServiceConfig resolution failure"

    const-string p2, "Balancer resolution failure"

    const-string p3, "Address resolution failure"

    if-eqz v4, :cond_9

    if-nez v3, :cond_6

    .line 10
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_8

    .line 11
    :cond_6
    invoke-static {v4}, Lrd5;->c(Ljava/lang/Throwable;)V

    .line 12
    new-instance p4, Ljava/lang/RuntimeException;

    invoke-direct {p4, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p4

    .line 13
    sget-object v0, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_7

    .line 14
    invoke-virtual {v0, v1, p2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    if-eqz p0, :cond_8

    .line 15
    invoke-virtual {v0, v1, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    throw p4

    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    .line 16
    sget-object p4, Lj67;->t:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p4, v5, p3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    if-eqz v3, :cond_b

    .line 17
    sget-object p3, Lj67;->t:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, p4, p2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    if-eqz p0, :cond_c

    .line 18
    sget-object p2, Lj67;->t:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_c
    new-instance p0, Lj67$c;

    invoke-direct {p0, v0, v2, v1}, Lj67$c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj67;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj67;->s:Ll47$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lj67;->g()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj67;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj67;->m:Z

    .line 3
    iget-object v0, p0, Lj67;->n:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lj67;->o:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lj67;->h:Lx87$c;

    invoke-static {v1, v0}, Lx87;->b(Lx87$c;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lj67;->n:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method public d(Ll47$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj67;->s:Ll47$e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lj67;->o:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lj67;->h:Lx87$c;

    invoke-static {v0}, Lx87;->a(Lx87$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lj67;->n:Ljava/util/concurrent/Executor;

    :cond_1
    const-string v0, "listener"

    .line 4
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ll47$e;

    iput-object p1, p0, Lj67;->s:Ll47$e;

    .line 5
    invoke-virtual {p0}, Lj67;->g()V

    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj67;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lj67;->m:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lj67;->l:Lj67$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lj67;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    iget-object v0, p0, Lj67;->k:Lpd5;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v2}, Lpd5;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-wide v4, p0, Lj67;->i:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iput-boolean v1, p0, Lj67;->r:Z

    .line 5
    iget-object v0, p0, Lj67;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Lj67$d;

    iget-object v2, p0, Lj67;->s:Ll47$e;

    invoke-direct {v1, p0, v2}, Lj67$d;-><init>(Lj67;Ll47$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method
