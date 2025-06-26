.class public final Lm57;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm57$d;,
        Lm57$c;,
        Lm57$g;,
        Lm57$f;,
        Lm57$b;,
        Lm57$e;
    }
.end annotation


# instance fields
.field public final a:Le47;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Le47;->c:Ljava/util/logging/Logger;

    const-class v0, Ld47;

    const-class v1, Le47;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Le47;->d:Le47;

    if-nez v2, :cond_2

    .line 3
    sget-object v2, Le47;->e:Ljava/lang/Iterable;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Le47$a;

    invoke-direct {v4}, Le47$a;-><init>()V

    .line 5
    invoke-static {v0, v2, v3, v4}, Ln56;->s1(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lw47;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v2, Le47;

    invoke-direct {v2}, Le47;-><init>()V

    sput-object v2, Le47;->d:Le47;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld47;

    .line 8
    sget-object v3, Le47;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ld47;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    sget-object v3, Le47;->d:Le47;

    .line 11
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v2}, Ld47;->d()Z

    move-result v4

    const-string v5, "isAvailable() returned false"

    invoke-static {v4, v5}, Lc50;->t(ZLjava/lang/Object;)V

    .line 13
    iget-object v4, v3, Le47;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    .line 15
    :cond_1
    sget-object v0, Le47;->d:Le47;

    invoke-virtual {v0}, Le47;->b()V

    .line 16
    :cond_2
    sget-object v0, Le47;->d:Le47;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "registry"

    .line 18
    invoke-static {v0, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lm57;->a:Le47;

    const-string v0, "defaultPolicy"

    .line 19
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lm57;->b:Ljava/lang/String;

    return-void

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v1

    throw p1
.end method

.method public static a(Lm57;Ljava/lang/String;Ljava/lang/String;)Ld47;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm57$f;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lm57;->a:Le47;

    invoke-virtual {p0, p1}, Le47;->a(Ljava/lang/String;)Ld47;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lm57$f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to load \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but it\'s unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lm57$f;-><init>(Ljava/lang/String;Lm57$a;)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/util/Map;Lz27;)Ll47$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lz27;",
            ")",
            "Ll47$b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1}, Ln56;->R0(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ln56;->A2(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw87;

    .line 6
    iget-object v2, v1, Lw87;->a:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lm57;->a:Le47;

    invoke-virtual {v3, v2}, Le47;->a(Ljava/lang/String;)Ld47;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    sget-object p1, Lz27$a;->e:Lz27$a;

    const-string v2, "{0} specified by Service Config are not available"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p2, p1, v2, v4}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_2
    iget-object p1, v1, Lw87;->b:Ljava/util/Map;

    .line 12
    invoke-virtual {v3, p1}, Ld47;->e(Ljava/util/Map;)Ll47$b;

    move-result-object p1

    .line 13
    iget-object p2, p1, Ll47$b;->a:Lx47;

    if-eqz p2, :cond_3

    return-object p1

    .line 14
    :cond_3
    new-instance p2, Lm57$g;

    .line 15
    iget-object v0, v1, Lw87;->b:Ljava/util/Map;

    .line 16
    iget-object p1, p1, Ll47$b;->b:Ljava/lang/Object;

    .line 17
    invoke-direct {p2, v3, v0, p1}, Lm57$g;-><init>(Ld47;Ljava/util/Map;Ljava/lang/Object;)V

    .line 18
    new-instance p1, Ll47$b;

    invoke-direct {p1, p2}, Ll47$b;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 19
    :cond_4
    sget-object p1, Lx47;->h:Lx47;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " specified by Service Config are available."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    .line 21
    new-instance p2, Ll47$b;

    invoke-direct {p2, p1}, Ll47$b;-><init>(Lx47;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 22
    :goto_2
    sget-object p2, Lx47;->h:Lx47;

    const-string v0, "can\'t parse load balancer configuration"

    .line 23
    invoke-virtual {p2, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p2

    invoke-virtual {p2, p1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    .line 24
    new-instance p2, Ll47$b;

    invoke-direct {p2, p1}, Ll47$b;-><init>(Lx47;)V

    return-object p2

    :cond_5
    return-object v0
.end method
