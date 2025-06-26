.class public Ll37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll37$c;,
        Ll37$f;,
        Ll37$d;,
        Ll37$g;,
        Ll37$b;,
        Ll37$a;,
        Ll37$e;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/logging/Logger;

.field public static final j:Lr47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr47<",
            "Ljava/lang/Object<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ll37;


# instance fields
.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll37$d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ll37$b;

.field public final g:Ll37$a;

.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ll37;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll37;->i:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lr47;

    invoke-direct {v0}, Lr47;-><init>()V

    sput-object v0, Ll37;->j:Lr47;

    .line 3
    new-instance v1, Ll37;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ll37;-><init>(Ll37;Lr47;)V

    sput-object v1, Ll37;->k:Ll37;

    return-void
.end method

.method public constructor <init>(Ll37;Lr47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll37;",
            "Lr47<",
            "Ljava/lang/Object<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ll37$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ll37$f;-><init>(Ll37;Lk37;)V

    iput-object p1, p0, Ll37;->f:Ll37$b;

    .line 3
    iput-object p2, p0, Ll37;->g:Ll37$a;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Ll37;->h:I

    return-void
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g()Ll37;
    .locals 1

    .line 1
    sget-object v0, Ll37$e;->a:Ll37$g;

    .line 2
    invoke-virtual {v0}, Ll37$g;->a()Ll37;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ll37;->k:Ll37;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ll37$b;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "cancellationListener"

    .line 1
    invoke-static {p1, v0}, Ll37;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    .line 2
    invoke-static {p2, v0}, Ll37;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ll37;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Ll37$d;

    invoke-direct {v0, p0, p2, p1}, Ll37$d;-><init>(Ll37;Ljava/util/concurrent/Executor;Ll37$b;)V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ll37;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Ll37$d;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Ll37;->e:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll37;->e:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Ll37;->g:Ll37$a;

    if-eqz p1, :cond_2

    .line 12
    iget-object p2, p0, Ll37;->f:Ll37$b;

    sget-object v0, Ll37$c;->e:Ll37$c;

    invoke-virtual {p1, p2, v0}, Ll37;->a(Ll37$b;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public b()Ll37;
    .locals 1

    .line 1
    sget-object v0, Ll37$e;->a:Ll37$g;

    .line 2
    invoke-virtual {v0, p0}, Ll37$g;->c(Ll37;)Ll37;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ll37;->k:Ll37;

    :cond_0
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll37;->g:Ll37$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Ll37;->g:Ll37$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ll37$a;->e()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public i(Ll37;)V
    .locals 1

    const-string v0, "toAttach"

    .line 1
    invoke-static {p1, v0}, Ll37;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ll37$e;->a:Ll37$g;

    .line 3
    invoke-virtual {v0, p0, p1}, Ll37$g;->b(Ll37;Ll37;)V

    return-void
.end method

.method public k()Lm37;
    .locals 2

    .line 1
    iget-object v0, p0, Ll37;->g:Ll37$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll37;->g:Ll37$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ll37$a;->m()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ll37;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ll37;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ll37;->e:Ljava/util/ArrayList;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll37$d;

    iget-object v3, v3, Ll37$d;->f:Ll37$b;

    instance-of v3, v3, Ll37$f;

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll37$d;

    invoke-virtual {v3}, Ll37$d;->a()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll37$d;

    iget-object v2, v2, Ll37$d;->f:Ll37$b;

    instance-of v2, v2, Ll37$f;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll37$d;

    invoke-virtual {v2}, Ll37$d;->a()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Ll37;->g:Ll37$a;

    if-eqz v0, :cond_6

    .line 14
    iget-object v1, p0, Ll37;->f:Ll37$b;

    invoke-virtual {v0, v1}, Ll37;->q(Ll37$b;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public q(Ll37$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll37;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ll37;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Ll37;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll37$d;

    iget-object v1, v1, Ll37$d;->f:Ll37$b;

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Ll37;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Ll37;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Ll37;->g:Ll37$a;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Ll37;->f:Ll37$b;

    invoke-virtual {p1, v0}, Ll37;->q(Ll37$b;)V

    :cond_3
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ll37;->e:Ljava/util/ArrayList;

    .line 11
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
