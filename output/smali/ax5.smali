.class public Lax5;
.super Liv5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lax5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liv5<",
        "Ldd6;",
        "Led6;",
        "Lax5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lqi6;


# instance fields
.field public final p:Low5;

.field public q:Z

.field public r:Lqi6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lqi6;->f:Lqi6;

    sput-object v0, Lax5;->s:Lqi6;

    return-void
.end method

.method public constructor <init>(Law5;Lex5;Low5;Lax5$a;)V
    .locals 9

    .line 1
    sget-object v0, Ltc6;->a:Lj47;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Ltc6;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Ltc6;->a:Lj47;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lj47;->b()Lj47$b;

    move-result-object v0

    sget-object v2, Lj47$d;->h:Lj47$d;

    .line 5
    iput-object v2, v0, Lj47$b;->c:Lj47$d;

    const-string v2, "google.firestore.v1.Firestore"

    const-string v3, "Write"

    .line 6
    invoke-static {v2, v3}, Lj47;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iput-object v2, v0, Lj47$b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v0, Lj47$b;->e:Z

    .line 9
    invoke-static {}, Ldd6;->F()Ldd6;

    move-result-object v2

    .line 10
    sget-object v3, Lua7;->a:Lyi6;

    .line 11
    new-instance v3, Lua7$a;

    invoke-direct {v3, v2}, Lua7$a;-><init>(Lak6;)V

    .line 12
    iput-object v3, v0, Lj47$b;->a:Lj47$c;

    .line 13
    invoke-static {}, Led6;->D()Led6;

    move-result-object v2

    .line 14
    new-instance v3, Lua7$a;

    invoke-direct {v3, v2}, Lua7$a;-><init>(Lak6;)V

    .line 15
    iput-object v3, v0, Lj47$b;->b:Lj47$c;

    .line 16
    invoke-virtual {v0}, Lj47$b;->a()Lj47;

    move-result-object v0

    sput-object v0, Ltc6;->a:Lj47;

    .line 17
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    move-object v4, v0

    .line 18
    sget-object v6, Lex5$d;->i:Lex5$d;

    sget-object v7, Lex5$d;->h:Lex5$d;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p4

    .line 19
    invoke-direct/range {v2 .. v8}, Liv5;-><init>(Law5;Lj47;Lex5;Lex5$d;Lex5$d;Luw5;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lax5;->q:Z

    .line 21
    sget-object p1, Lax5;->s:Lqi6;

    iput-object p1, p0, Lax5;->r:Lqi6;

    .line 22
    iput-object p3, p0, Lax5;->p:Low5;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Led6;

    .line 2
    invoke-virtual {p1}, Led6;->E()Lqi6;

    move-result-object v0

    iput-object v0, p0, Lax5;->r:Lqi6;

    .line 3
    iget-boolean v0, p0, Lax5;->q:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lax5;->q:Z

    .line 5
    iget-object p1, p0, Liv5;->k:Luw5;

    check-cast p1, Lax5$a;

    invoke-interface {p1}, Lax5$a;->d()V

    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Liv5;->j:Lpx5;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lpx5;->f:J

    .line 8
    iget-object v0, p0, Lax5;->p:Low5;

    invoke-virtual {p1}, Led6;->C()Lwk6;

    move-result-object v1

    invoke-virtual {v0, v1}, Low5;->e(Lwk6;)Lju5;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Led6;->G()I

    move-result v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 11
    invoke-virtual {p1, v4}, Led6;->F(I)Lfd6;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lax5;->p:Low5;

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v5}, Lfd6;->E()Lwk6;

    move-result-object v7

    invoke-virtual {v6, v7}, Low5;->e(Lwk6;)Lju5;

    move-result-object v6

    .line 15
    sget-object v7, Lju5;->f:Lju5;

    invoke-virtual {v7, v6}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v0

    :cond_1
    const/4 v7, 0x0

    .line 16
    invoke-virtual {v5}, Lfd6;->D()I

    move-result v8

    if-lez v8, :cond_2

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    .line 18
    invoke-virtual {v5, v9}, Lfd6;->C(I)Lbd6;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 19
    :cond_2
    new-instance v5, Ltu5;

    invoke-direct {v5, v6, v7}, Ltu5;-><init>(Lju5;Ljava/util/List;)V

    .line 20
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Liv5;->k:Luw5;

    check-cast p1, Lax5$a;

    invoke-interface {p1, v0, v2}, Lax5$a;->a(Lju5;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lax5;->q:Z

    .line 2
    invoke-super {p0}, Liv5;->g()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lax5;->q:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lax5;->j(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lqu5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Liv5;->c()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Writing mutations requires an opened stream"

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lax5;->q:Z

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Handshake must be complete before writing mutations"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Ldd6;->G()Ldd6$b;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqu5;

    .line 5
    iget-object v2, p0, Lax5;->p:Low5;

    invoke-virtual {v2, v1}, Low5;->k(Lqu5;)Lcd6;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 7
    iget-object v2, v0, Lgj6$a;->f:Lgj6;

    check-cast v2, Ldd6;

    invoke-static {v2, v1}, Ldd6;->E(Ldd6;Lcd6;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lax5;->r:Lqi6;

    .line 9
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 10
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Ldd6;

    invoke-static {v1, p1}, Ldd6;->D(Ldd6;Lqi6;)V

    .line 11
    invoke-virtual {v0}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Ldd6;

    invoke-virtual {p0, p1}, Liv5;->i(Ljava/lang/Object;)V

    return-void
.end method
