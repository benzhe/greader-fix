.class public final Lgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lyq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lds;

.field public final b:Ljava/lang/String;

.field public final c:Luq;

.field public final d:Lxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxq<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Lhs;


# direct methods
.method public constructor <init>(Lds;Ljava/lang/String;Luq;Lxq;Lhs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lds;",
            "Ljava/lang/String;",
            "Luq;",
            "Lxq<",
            "TT;[B>;",
            "Lhs;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgs;->a:Lds;

    .line 3
    iput-object p2, p0, Lgs;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lgs;->c:Luq;

    .line 5
    iput-object p4, p0, Lgs;->d:Lxq;

    .line 6
    iput-object p5, p0, Lgs;->e:Lhs;

    return-void
.end method


# virtual methods
.method public a(Lvq;Lar;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvq<",
            "TT;>;",
            "Lar;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgs;->e:Lhs;

    .line 2
    iget-object v1, p0, Lgs;->a:Lds;

    const-string v2, "Null transportContext"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Null event"

    .line 4
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lgs;->b:Ljava/lang/String;

    const-string v3, "Null transportName"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lgs;->d:Lxq;

    const-string v4, "Null transformer"

    .line 8
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lgs;->c:Luq;

    const-string v5, "Null encoding"

    .line 10
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    check-cast v0, Lis;

    .line 12
    iget-object v5, v0, Lis;->c:Lft;

    .line 13
    invoke-virtual {p1}, Lvq;->c()Lwq;

    move-result-object v6

    .line 14
    invoke-static {}, Lds;->a()Lds$a;

    move-result-object v7

    .line 15
    invoke-virtual {v1}, Lds;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lds$a;->b(Ljava/lang/String;)Lds$a;

    .line 16
    invoke-virtual {v7, v6}, Lds$a;->c(Lwq;)Lds$a;

    .line 17
    invoke-virtual {v1}, Lds;->c()[B

    move-result-object v1

    check-cast v7, Lwr$b;

    .line 18
    iput-object v1, v7, Lwr$b;->b:[B

    .line 19
    invoke-virtual {v7}, Lwr$b;->a()Lds;

    move-result-object v1

    .line 20
    new-instance v6, Lvr$b;

    invoke-direct {v6}, Lvr$b;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v7, v6, Lvr$b;->f:Ljava/util/Map;

    .line 22
    iget-object v7, v0, Lis;->a:Ldv;

    .line 23
    invoke-interface {v7}, Ldv;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lvr$b;->e(J)Las$a;

    iget-object v0, v0, Lis;->b:Ldv;

    .line 24
    invoke-interface {v0}, Ldv;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lvr$b;->g(J)Las$a;

    .line 25
    invoke-virtual {v6, v2}, Lvr$b;->f(Ljava/lang/String;)Las$a;

    new-instance v0, Lzr;

    .line 26
    invoke-virtual {p1}, Lvq;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lxq;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 27
    invoke-direct {v0, v4, v2}, Lzr;-><init>(Luq;[B)V

    invoke-virtual {v6, v0}, Lvr$b;->d(Lzr;)Las$a;

    .line 28
    invoke-virtual {p1}, Lvq;->a()Ljava/lang/Integer;

    move-result-object p1

    .line 29
    iput-object p1, v6, Lvr$b;->b:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v6}, Lvr$b;->b()Las;

    move-result-object p1

    .line 31
    invoke-interface {v5, v1, p1, p2}, Lft;->a(Lds;Las;Lar;)V

    return-void
.end method
