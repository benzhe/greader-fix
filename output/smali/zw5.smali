.class public Lzw5;
.super Liv5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzw5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liv5<",
        "Luc6;",
        "Lvc6;",
        "Lzw5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final q:Lqi6;


# instance fields
.field public final p:Low5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lqi6;->f:Lqi6;

    sput-object v0, Lzw5;->q:Lqi6;

    return-void
.end method

.method public constructor <init>(Law5;Lex5;Low5;Lzw5$a;)V
    .locals 9

    .line 1
    sget-object v0, Ltc6;->b:Lj47;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Ltc6;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Ltc6;->b:Lj47;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lj47;->b()Lj47$b;

    move-result-object v0

    sget-object v2, Lj47$d;->h:Lj47$d;

    .line 5
    iput-object v2, v0, Lj47$b;->c:Lj47$d;

    const-string v2, "google.firestore.v1.Firestore"

    const-string v3, "Listen"

    .line 6
    invoke-static {v2, v3}, Lj47;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iput-object v2, v0, Lj47$b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v0, Lj47$b;->e:Z

    .line 9
    invoke-static {}, Luc6;->G()Luc6;

    move-result-object v2

    .line 10
    sget-object v3, Lua7;->a:Lyi6;

    .line 11
    new-instance v3, Lua7$a;

    invoke-direct {v3, v2}, Lua7$a;-><init>(Lak6;)V

    .line 12
    iput-object v3, v0, Lj47$b;->a:Lj47$c;

    .line 13
    invoke-static {}, Lvc6;->C()Lvc6;

    move-result-object v2

    .line 14
    new-instance v3, Lua7$a;

    invoke-direct {v3, v2}, Lua7$a;-><init>(Lak6;)V

    .line 15
    iput-object v3, v0, Lj47$b;->b:Lj47$c;

    .line 16
    invoke-virtual {v0}, Lj47$b;->a()Lj47;

    move-result-object v0

    sput-object v0, Ltc6;->b:Lj47;

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
    sget-object v6, Lex5$d;->g:Lex5$d;

    sget-object v7, Lex5$d;->f:Lex5$d;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p4

    .line 19
    invoke-direct/range {v2 .. v8}, Liv5;-><init>(Law5;Lj47;Lex5;Lex5$d;Lex5$d;Luw5;)V

    .line 20
    iput-object p3, p0, Lzw5;->p:Low5;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lvc6;

    .line 2
    iget-object v0, p0, Liv5;->j:Lpx5;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, v0, Lpx5;->f:J

    .line 4
    iget-object v0, p0, Lzw5;->p:Low5;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lvc6;->H()Lvc6$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    const/4 v7, 0x0

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    .line 7
    invoke-virtual {p1}, Lvc6;->G()Lsc6;

    move-result-object v0

    .line 8
    new-instance v1, Lrv5;

    invoke-virtual {v0}, Lsc6;->C()I

    move-result v2

    invoke-direct {v1, v2}, Lrv5;-><init>(I)V

    .line 9
    invoke-virtual {v0}, Lsc6;->E()I

    move-result v0

    .line 10
    new-instance v2, Lxw5$c;

    invoke-direct {v2, v0, v1}, Lxw5$c;-><init>(ILrv5;)V

    goto/16 :goto_2

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown change type set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lvc6;->F()Lqc6;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lqc6;->E()Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Lqc6;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v0

    .line 15
    new-instance v1, Lxw5$b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4, v3, v0, v2}, Lxw5$b;-><init>(Ljava/util/List;Ljava/util/List;Lbu5;Lfu5;)V

    move-object v2, v1

    goto/16 :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1}, Lvc6;->E()Loc6;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Loc6;->F()Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Loc6;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Loc6;->E()Lwk6;

    move-result-object v1

    invoke-virtual {v0, v1}, Low5;->e(Lwk6;)Lju5;

    move-result-object v0

    .line 20
    new-instance v1, Lgu5;

    invoke-direct {v1, v3, v0, v7}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    .line 21
    new-instance v0, Lxw5$b;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 23
    iget-object v4, v1, Lfu5;->a:Lbu5;

    .line 24
    invoke-direct {v0, v3, v2, v4, v1}, Lxw5$b;-><init>(Ljava/util/List;Ljava/util/List;Lbu5;Lfu5;)V

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {p1}, Lvc6;->D()Lnc6;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lnc6;->F()Ljava/util/List;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Lnc6;->E()Ljava/util/List;

    move-result-object v3

    .line 28
    invoke-virtual {v1}, Lnc6;->D()Lmc6;

    move-result-object v4

    invoke-virtual {v4}, Lmc6;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Low5;->a(Ljava/lang/String;)Lbu5;

    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lnc6;->D()Lmc6;

    move-result-object v5

    invoke-virtual {v5}, Lmc6;->I()Lwk6;

    move-result-object v5

    invoke-virtual {v0, v5}, Low5;->e(Lwk6;)Lju5;

    move-result-object v0

    .line 30
    sget-object v5, Lju5;->f:Lju5;

    .line 31
    invoke-virtual {v0, v5}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v6

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "Got a document change without an update time"

    .line 32
    invoke-static {v5, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1}, Lnc6;->D()Lmc6;

    move-result-object v1

    invoke-virtual {v1}, Lmc6;->G()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lhu5;->b(Ljava/util/Map;)Lhu5;

    move-result-object v1

    .line 34
    new-instance v5, Lyt5;

    sget-object v6, Lyt5$a;->g:Lyt5$a;

    invoke-direct {v5, v4, v0, v1, v6}, Lyt5;-><init>(Lbu5;Lju5;Lhu5;Lyt5$a;)V

    .line 35
    new-instance v0, Lxw5$b;

    invoke-direct {v0, v2, v3, v4, v5}, Lxw5$b;-><init>(Ljava/util/List;Ljava/util/List;Lbu5;Lfu5;)V

    :goto_0
    move-object v2, v0

    goto :goto_2

    .line 36
    :cond_4
    invoke-virtual {p1}, Lvc6;->I()Lad6;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lad6;->G()Lad6$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    if-ne v1, v3, :cond_5

    .line 38
    sget-object v1, Lxw5$e;->i:Lxw5$e;

    goto :goto_1

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown target change type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_6
    sget-object v1, Lxw5$e;->h:Lxw5$e;

    goto :goto_1

    .line 41
    :cond_7
    sget-object v1, Lxw5$e;->g:Lxw5$e;

    .line 42
    invoke-virtual {v0}, Lad6;->C()Lil6;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lil6;->C()I

    move-result v3

    invoke-static {v3}, Lx47;->d(I)Lx47;

    move-result-object v3

    invoke-virtual {v2}, Lil6;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v2

    goto :goto_1

    .line 44
    :cond_8
    sget-object v1, Lxw5$e;->f:Lxw5$e;

    goto :goto_1

    .line 45
    :cond_9
    sget-object v1, Lxw5$e;->e:Lxw5$e;

    .line 46
    :goto_1
    new-instance v3, Lxw5$d;

    .line 47
    invoke-virtual {v0}, Lad6;->I()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lad6;->F()Lqi6;

    move-result-object v0

    invoke-direct {v3, v1, v4, v0, v2}, Lxw5$d;-><init>(Lxw5$e;Ljava/util/List;Lqi6;Lx47;)V

    move-object v2, v3

    .line 48
    :goto_2
    iget-object v0, p0, Lzw5;->p:Low5;

    .line 49
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lvc6;->H()Lvc6$c;

    move-result-object v1

    sget-object v3, Lvc6$c;->e:Lvc6$c;

    if-eq v1, v3, :cond_a

    .line 51
    sget-object p1, Lju5;->f:Lju5;

    goto :goto_3

    .line 52
    :cond_a
    invoke-virtual {p1}, Lvc6;->I()Lad6;

    move-result-object v1

    invoke-virtual {v1}, Lad6;->H()I

    move-result v1

    if-eqz v1, :cond_b

    .line 53
    sget-object p1, Lju5;->f:Lju5;

    goto :goto_3

    .line 54
    :cond_b
    invoke-virtual {p1}, Lvc6;->I()Lad6;

    move-result-object p1

    invoke-virtual {p1}, Lad6;->E()Lwk6;

    move-result-object p1

    invoke-virtual {v0, p1}, Low5;->e(Lwk6;)Lju5;

    move-result-object p1

    .line 55
    :goto_3
    iget-object v0, p0, Liv5;->k:Luw5;

    check-cast v0, Lzw5$a;

    invoke-interface {v0, p1, v2}, Lzw5$a;->c(Lju5;Lxw5;)V

    return-void
.end method
