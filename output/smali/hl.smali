.class public abstract Lhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lql<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lhl$a;


# direct methods
.method public constructor <init>(Lql;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lql<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhl;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lhl;->c:Lql;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lhl;->b:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lhl;->e()V

    return-void
.end method

.method public abstract b(Ldm;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldm;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldm;

    .line 3
    invoke-virtual {p0, v0}, Lhl;->b(Ldm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lhl;->a:Ljava/util/List;

    iget-object v0, v0, Ldm;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lhl;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lhl;->c:Lql;

    invoke-virtual {p1, p0}, Lql;->b(Lbl;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lhl;->c:Lql;

    .line 8
    iget-object v0, p1, Lql;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p1, Lql;->d:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p1, Lql;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 11
    invoke-virtual {p1}, Lql;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lql;->e:Ljava/lang/Object;

    .line 12
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v3, Lql;->f:Ljava/lang/String;

    const-string v4, "%s: initial state = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p1, Lql;->e:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {p1}, Lql;->d()V

    .line 16
    :cond_3
    iget-object p1, p1, Lql;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lhl;->a(Ljava/lang/Object;)V

    .line 17
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_1
    invoke-virtual {p0}, Lhl;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lhl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lhl;->d:Lhl$a;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lhl;->b:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lhl;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lhl;->d:Lhl$a;

    iget-object v1, p0, Lhl;->a:Ljava/util/List;

    check-cast v0, Lel;

    .line 4
    iget-object v2, v0, Lel;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v4}, Lel;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v5

    sget-object v6, Lel;->d:Ljava/lang/String;

    const-string v7, "Constraints met for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v7, v8}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, v0, Lel;->a:Ldl;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0, v3}, Ldl;->e(Ljava/util/List;)V

    .line 12
    :cond_4
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lhl;->d:Lhl$a;

    iget-object v1, p0, Lhl;->a:Ljava/util/List;

    check-cast v0, Lel;

    .line 14
    iget-object v2, v0, Lel;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 15
    :try_start_1
    iget-object v0, v0, Lel;->a:Ldl;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0, v1}, Ldl;->b(Ljava/util/List;)V

    .line 17
    :cond_6
    monitor-exit v2

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_7
    :goto_3
    return-void
.end method
