.class public final Lj67$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final e:Ll47$e;

.field public final synthetic f:Lj67;


# direct methods
.method public constructor <init>(Lj67;Ll47$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj67$d;->f:Lj67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "savedListener"

    .line 2
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lj67$d;->e:Ll47$e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const-string v0, "Unable to resolve host "

    .line 1
    iget-object v1, p0, Lj67$d;->f:Lj67;

    .line 2
    iget-object v2, v1, Lj67;->f:Ljava/lang/String;

    .line 3
    iget v1, v1, Lj67;->g:I

    .line 4
    invoke-static {v2, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lj67$d;->f:Lj67;

    iget-object v2, v2, Lj67;->a:Lt47;

    invoke-interface {v2, v1}, Lt47;->a(Ljava/net/SocketAddress;)Ls47;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lj67;->t:Ljava/util/logging/Logger;

    .line 7
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using proxy address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 9
    :cond_0
    new-instance v0, Lq37;

    .line 10
    sget-object v3, Lv27;->b:Lv27;

    .line 11
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lq37;-><init>(Ljava/util/List;Lv27;)V

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v1, Ll47$f;

    invoke-direct {v1, v0, v3, v2}, Ll47$f;-><init>(Ljava/util/List;Lv27;Ll47$b;)V

    .line 15
    iget-object v0, p0, Lj67$d;->e:Ll47$e;

    invoke-virtual {v0, v1}, Ll47$e;->b(Ll47$f;)V

    return-void

    .line 16
    :cond_1
    :try_start_1
    sget-boolean v1, Lj67;->y:Z

    sget-boolean v3, Lj67;->z:Z

    iget-object v4, p0, Lj67$d;->f:Lj67;

    .line 17
    iget-object v4, v4, Lj67;->f:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "localhost"

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, ":"

    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 20
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    and-int/2addr v3, v7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    xor-int/2addr v3, v5

    :goto_3
    if-eqz v3, :cond_8

    .line 22
    iget-object v1, p0, Lj67$d;->f:Lj67;

    .line 23
    iget-object v1, v1, Lj67;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj67$e;

    if-nez v1, :cond_9

    .line 24
    sget-object v3, Lj67;->B:Lj67$f;

    if-eqz v3, :cond_9

    .line 25
    invoke-interface {v3}, Lj67$f;->a()Lj67$e;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, v2

    .line 26
    :cond_9
    :goto_4
    iget-object v3, p0, Lj67$d;->f:Lj67;

    .line 27
    iget-object v3, v3, Lj67;->c:Lj67$a;

    .line 28
    iget-object v4, p0, Lj67$d;->f:Lj67;

    .line 29
    iget-boolean v7, v4, Lj67;->p:Z

    .line 30
    sget-boolean v8, Lj67;->A:Z

    .line 31
    iget-object v4, v4, Lj67;->f:Ljava/lang/String;

    .line 32
    invoke-static {v3, v1, v7, v8, v4}, Lj67;->h(Lj67$a;Lj67$e;ZZLjava/lang/String;)Lj67$c;

    move-result-object v1

    .line 33
    iget-object v3, p0, Lj67$d;->f:Lj67;

    .line 34
    iget-object v3, v3, Lj67;->j:Lb57;

    .line 35
    new-instance v4, Lj67$d$b;

    invoke-direct {v4, p0, v1}, Lj67$d$b;-><init>(Lj67$d;Lj67$c;)V

    .line 36
    iget-object v7, v3, Lb57;->f:Ljava/util/Queue;

    const-string v8, "runnable is null"

    invoke-static {v4, v8}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v3}, Lb57;->a()V

    .line 38
    sget-object v3, Lj67;->t:Ljava/util/logging/Logger;

    .line 39
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found DNS results "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lj67$d;->f:Lj67;

    .line 41
    iget-object v7, v7, Lj67;->f:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 43
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v3, v1, Lj67$c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 45
    new-instance v7, Lq37;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lj67$d;->f:Lj67;

    .line 46
    iget v9, v9, Lj67;->g:I

    .line 47
    invoke-direct {v8, v4, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 48
    sget-object v4, Lv27;->b:Lv27;

    .line 49
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lq37;-><init>(Ljava/util/List;Lv27;)V

    .line 50
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 51
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 52
    sget-object v3, Lv27;->b:Lv27;

    .line 53
    invoke-static {}, Lv27;->a()Lv27$b;

    move-result-object v3

    .line 54
    iget-object v4, v1, Lj67$c;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 55
    sget-object v4, Lt67;->b:Lv27$c;

    iget-object v7, v1, Lj67$c;->c:Ljava/util/List;

    invoke-virtual {v3, v4, v7}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    .line 56
    :cond_c
    iget-object v4, v1, Lj67$c;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 57
    iget-object v1, v1, Lj67$c;->b:Ljava/util/List;

    iget-object v4, p0, Lj67$d;->f:Lj67;

    .line 58
    iget-object v4, v4, Lj67;->b:Ljava/util/Random;

    .line 59
    sget-object v5, Lj67;->C:Ljava/lang/String;

    if-nez v5, :cond_d

    .line 60
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lj67;->C:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :cond_d
    :goto_6
    sget-object v5, Lj67;->C:Ljava/lang/String;

    .line 63
    :try_start_3
    invoke-static {v1}, Lj67;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, v2

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 65
    :try_start_4
    invoke-static {v6, v4, v5}, Lj67;->e(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v6, :cond_e

    goto :goto_7

    :catch_1
    move-exception v1

    .line 66
    sget-object v4, Lx47;->h:Lx47;

    const-string v5, "failed to pick service config choice"

    .line 67
    invoke-virtual {v4, v5}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v4

    invoke-virtual {v4, v1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v1

    .line 68
    new-instance v4, Ll47$b;

    invoke-direct {v4, v1}, Ll47$b;-><init>(Lx47;)V

    goto :goto_9

    :cond_f
    :goto_7
    if-nez v6, :cond_10

    move-object v4, v2

    goto :goto_9

    .line 69
    :cond_10
    new-instance v4, Ll47$b;

    invoke-direct {v4, v6}, Ll47$b;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    .line 70
    :goto_8
    sget-object v4, Lx47;->h:Lx47;

    const-string v5, "failed to parse TXT records"

    .line 71
    invoke-virtual {v4, v5}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v4

    invoke-virtual {v4, v1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v1

    .line 72
    new-instance v4, Ll47$b;

    invoke-direct {v4, v1}, Ll47$b;-><init>(Lx47;)V

    :goto_9
    if-eqz v4, :cond_13

    .line 73
    iget-object v1, v4, Ll47$b;->a:Lx47;

    if-eqz v1, :cond_11

    .line 74
    iget-object v0, p0, Lj67$d;->e:Ll47$e;

    invoke-virtual {v0, v1}, Ll47$e;->a(Lx47;)V

    return-void

    .line 75
    :cond_11
    iget-object v1, v4, Ll47$b;->b:Ljava/lang/Object;

    .line 76
    check-cast v1, Ljava/util/Map;

    .line 77
    iget-object v2, p0, Lj67$d;->f:Lj67;

    .line 78
    iget-object v2, v2, Lj67;->q:Ll47$g;

    .line 79
    invoke-virtual {v2, v1}, Ll47$g;->a(Ljava/util/Map;)Ll47$b;

    move-result-object v2

    .line 80
    sget-object v4, Lt67;->a:Lv27$c;

    .line 81
    invoke-virtual {v3, v4, v1}, Lv27$b;->b(Lv27$c;Ljava/lang/Object;)Lv27$b;

    goto :goto_a

    .line 82
    :cond_12
    sget-object v1, Lj67;->t:Ljava/util/logging/Logger;

    .line 83
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lj67$d;->f:Lj67;

    .line 84
    iget-object v7, v7, Lj67;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v6, "No TXT records found for {0}"

    .line 85
    invoke-virtual {v1, v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_13
    :goto_a
    iget-object v1, p0, Lj67$d;->e:Ll47$e;

    invoke-virtual {v3}, Lv27$b;->a()Lv27;

    move-result-object v3

    .line 87
    new-instance v4, Ll47$f;

    invoke-direct {v4, v0, v3, v2}, Ll47$f;-><init>(Ljava/util/List;Lv27;Ll47$b;)V

    .line 88
    invoke-virtual {v1, v4}, Ll47$e;->b(Ll47$f;)V

    return-void

    :catch_4
    move-exception v1

    .line 89
    iget-object v2, p0, Lj67$d;->e:Ll47$e;

    sget-object v3, Lx47;->n:Lx47;

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lj67$d;->f:Lj67;

    .line 90
    iget-object v4, v4, Lj67;->f:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Ll47$e;->a(Lx47;)V

    return-void

    :catch_5
    move-exception v1

    .line 93
    iget-object v2, p0, Lj67$d;->e:Ll47$e;

    sget-object v3, Lx47;->n:Lx47;

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lj67$d;->f:Lj67;

    .line 94
    iget-object v4, v4, Lj67;->f:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v0

    .line 96
    invoke-virtual {v2, v0}, Ll47$e;->a(Lx47;)V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "runnable is null"

    .line 1
    sget-object v1, Lj67;->t:Ljava/util/logging/Logger;

    .line 2
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Attempting DNS resolution of "

    .line 3
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lj67$d;->f:Lj67;

    .line 4
    iget-object v3, v3, Lj67;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lj67$d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lj67$d;->f:Lj67;

    .line 8
    iget-object v1, v1, Lj67;->j:Lb57;

    .line 9
    new-instance v2, Lj67$d$a;

    invoke-direct {v2, p0}, Lj67$d$a;-><init>(Lj67$d;)V

    .line 10
    iget-object v3, v1, Lb57;->f:Ljava/util/Queue;

    invoke-static {v2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v1}, Lb57;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lj67$d;->f:Lj67;

    .line 13
    iget-object v2, v2, Lj67;->j:Lb57;

    .line 14
    new-instance v3, Lj67$d$a;

    invoke-direct {v3, p0}, Lj67$d$a;-><init>(Lj67$d;)V

    .line 15
    iget-object v4, v2, Lb57;->f:Ljava/util/Queue;

    invoke-static {v3, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, Lb57;->a()V

    .line 17
    throw v1
.end method
