.class public Lcf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf5;


# static fields
.field public static volatile c:Lbf5;


# instance fields
.field public final a:Lxr4;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldf5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxr4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcf5;->a:Lxr4;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcf5;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public W(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .line 1
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-static {p1}, Lff5;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2, p3}, Lff5;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1, p2, p3}, Lff5;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "clx"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_ae"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-string v2, "_r"

    .line 7
    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcf5;->a:Lxr4;

    .line 9
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lq34;->h(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcf5;->a:Lxr4;

    .line 1
    iget-object v0, v0, Lxr4;->a:Lq34;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, p1}, Lq34;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbf5$c;)V
    .locals 6
    .param p1    # Lbf5$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lff5;->a:Ljava/util/Set;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p1, Lbf5$c;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v1, p1, Lbf5$c;->c:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 9
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 13
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v2

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 16
    :cond_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    if-eqz v2, :cond_d

    .line 17
    :cond_4
    invoke-static {v0}, Lff5;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    iget-object v1, p1, Lbf5$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lff5;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    iget-object v1, p1, Lbf5$c;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 20
    iget-object v2, p1, Lbf5$c;->l:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lff5;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    iget-object v1, p1, Lbf5$c;->k:Ljava/lang/String;

    iget-object v2, p1, Lbf5$c;->l:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lff5;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 22
    :cond_8
    iget-object v1, p1, Lbf5$c;->h:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 23
    iget-object v2, p1, Lbf5$c;->i:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lff5;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    iget-object v1, p1, Lbf5$c;->h:Ljava/lang/String;

    iget-object v2, p1, Lbf5$c;->i:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lff5;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25
    :cond_a
    iget-object v1, p1, Lbf5$c;->f:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 26
    iget-object v2, p1, Lbf5$c;->g:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lff5;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    .line 27
    :cond_b
    iget-object v1, p1, Lbf5$c;->f:Ljava/lang/String;

    iget-object v2, p1, Lbf5$c;->g:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lff5;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_e

    return-void

    .line 28
    :cond_e
    iget-object v0, p0, Lcf5;->a:Lxr4;

    .line 29
    new-instance v1, Landroid/os/Bundle;

    .line 30
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-object v2, p1, Lbf5$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v3, "origin"

    .line 32
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_f
    iget-object v2, p1, Lbf5$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-string v3, "name"

    .line 34
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_10
    iget-object v2, p1, Lbf5$c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_11

    .line 36
    invoke-static {v1, v2}, Lc50;->Z1(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 37
    :cond_11
    iget-object v2, p1, Lbf5$c;->d:Ljava/lang/String;

    if-eqz v2, :cond_12

    const-string v3, "trigger_event_name"

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_12
    iget-wide v2, p1, Lbf5$c;->e:J

    const-string v4, "trigger_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    iget-object v2, p1, Lbf5$c;->f:Ljava/lang/String;

    if-eqz v2, :cond_13

    const-string v3, "timed_out_event_name"

    .line 41
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_13
    iget-object v2, p1, Lbf5$c;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_14

    const-string v3, "timed_out_event_params"

    .line 43
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    :cond_14
    iget-object v2, p1, Lbf5$c;->h:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string v3, "triggered_event_name"

    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_15
    iget-object v2, p1, Lbf5$c;->i:Landroid/os/Bundle;

    if-eqz v2, :cond_16

    const-string v3, "triggered_event_params"

    .line 47
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    :cond_16
    iget-wide v2, p1, Lbf5$c;->j:J

    const-string v4, "time_to_live"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    iget-object v2, p1, Lbf5$c;->k:Ljava/lang/String;

    if-eqz v2, :cond_17

    const-string v3, "expired_event_name"

    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_17
    iget-object v2, p1, Lbf5$c;->l:Landroid/os/Bundle;

    if-eqz v2, :cond_18

    const-string v3, "expired_event_params"

    .line 52
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    :cond_18
    iget-wide v2, p1, Lbf5$c;->m:J

    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 54
    iget-boolean v2, p1, Lbf5$c;->n:Z

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    iget-wide v2, p1, Lbf5$c;->o:J

    const-string p1, "triggered_timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 56
    iget-object p1, v0, Lxr4;->a:Lq34;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lk24;

    .line 58
    invoke-direct {v0, p1, v1}, Lk24;-><init>(Lq34;Landroid/os/Bundle;)V

    .line 59
    iget-object p1, p1, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 60
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcf5;->a:Lxr4;

    .line 1
    iget-object v0, v0, Lxr4;->a:Lq34;

    .line 2
    invoke-virtual {v0, p1}, Lq34;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcf5;->a:Lxr4;

    .line 2
    iget-object p2, p2, Lxr4;->a:Lq34;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ll24;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p3, p2, p1, v0, v0}, Ll24;-><init>(Lq34;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5
    iget-object p1, p2, Lq34;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbf5$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcf5;->a:Lxr4;

    .line 2
    iget-object v1, v1, Lxr4;->a:Lq34;

    .line 3
    invoke-virtual {v1, p1, p2}, Lq34;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 5
    sget-object v1, Lff5;->a:Ljava/util/Set;

    .line 6
    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/String;

    const-string v3, "null reference"

    .line 7
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lbf5$c;

    invoke-direct {v3}, Lbf5$c;-><init>()V

    const/4 v4, 0x0

    const-string v5, "origin"

    .line 9
    invoke-static {p2, v5, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lbf5$c;->a:Ljava/lang/String;

    const-string v5, "name"

    .line 10
    invoke-static {p2, v5, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lbf5$c;->b:Ljava/lang/String;

    const-class v5, Ljava/lang/Object;

    const-string v6, "value"

    .line 11
    invoke-static {p2, v6, v5, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lbf5$c;->c:Ljava/lang/Object;

    const-string v5, "trigger_event_name"

    .line 12
    invoke-static {p2, v5, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lbf5$c;->d:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "trigger_timeout"

    .line 14
    invoke-static {p2, v6, v1, v5}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lbf5$c;->e:J

    const-string v6, "timed_out_event_name"

    .line 15
    invoke-static {p2, v6, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lbf5$c;->f:Ljava/lang/String;

    const-class v6, Landroid/os/Bundle;

    const-string v7, "timed_out_event_params"

    .line 16
    invoke-static {p2, v7, v6, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v3, Lbf5$c;->g:Landroid/os/Bundle;

    const-string v6, "triggered_event_name"

    .line 17
    invoke-static {p2, v6, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lbf5$c;->h:Ljava/lang/String;

    const-class v6, Landroid/os/Bundle;

    const-string v7, "triggered_event_params"

    .line 18
    invoke-static {p2, v7, v6, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v3, Lbf5$c;->i:Landroid/os/Bundle;

    const-string v6, "time_to_live"

    .line 19
    invoke-static {p2, v6, v1, v5}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lbf5$c;->j:J

    const-string v6, "expired_event_name"

    .line 20
    invoke-static {p2, v6, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lbf5$c;->k:Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    const-string v6, "expired_event_params"

    .line 21
    invoke-static {p2, v6, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v3, Lbf5$c;->l:Landroid/os/Bundle;

    const-class v2, Ljava/lang/Boolean;

    .line 22
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "active"

    .line 23
    invoke-static {p2, v6, v2, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lbf5$c;->n:Z

    const-string v2, "creation_timestamp"

    .line 24
    invoke-static {p2, v2, v1, v5}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lbf5$c;->m:J

    const-string v2, "triggered_timestamp"

    .line 25
    invoke-static {p2, v2, v1, v5}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v3, Lbf5$c;->o:J

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lff5;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lff5;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcf5;->a:Lxr4;

    .line 3
    iget-object v0, v0, Lxr4;->a:Lq34;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3, v1}, Lq34;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public f(Ljava/lang/String;Lbf5$b;)Lbf5$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lbf5$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "null reference"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lff5;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcf5;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcf5;->a:Lxr4;

    const-string v2, "fiam"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lhf5;

    .line 5
    invoke-direct {v2, v0, p2}, Lhf5;-><init>(Lxr4;Lbf5$b;)V

    goto :goto_1

    :cond_2
    const-string v2, "crash"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "clx"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v2, Ljf5;

    .line 8
    invoke-direct {v2, v0, p2}, Ljf5;-><init>(Lxr4;Lbf5$b;)V

    :goto_1
    if-eqz v2, :cond_5

    .line 9
    iget-object p2, p0, Lcf5;->b:Ljava/util/Map;

    .line 10
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p2, Lcf5$a;

    invoke-direct {p2, p0, p1}, Lcf5$a;-><init>(Lcf5;Ljava/lang/String;)V

    return-object p2

    :cond_5
    return-object v1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcf5;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf5;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
