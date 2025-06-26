.class public final Lj87;
.super Lc47;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj87$c;,
        Lj87$b;
    }
.end annotation


# instance fields
.field public final b:Lc47$d;

.field public c:Lc47$h;


# direct methods
.method public constructor <init>(Lc47$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc47;-><init>()V

    const-string v0, "helper"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc47$d;

    iput-object p1, p0, Lj87;->b:Lc47$d;

    return-void
.end method


# virtual methods
.method public a(Lx47;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj87;->c:Lc47$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc47$h;->e()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lj87;->c:Lc47$h;

    .line 4
    :cond_0
    iget-object v0, p0, Lj87;->b:Lc47$d;

    sget-object v1, Li37;->g:Li37;

    new-instance v2, Lj87$b;

    invoke-static {p1}, Lc47$e;->a(Lx47;)Lc47$e;

    move-result-object p1

    invoke-direct {v2, p1}, Lj87$b;-><init>(Lc47$e;)V

    invoke-virtual {v0, v1, v2}, Lc47$d;->d(Li37;Lc47$i;)V

    return-void
.end method

.method public b(Lc47$g;)V
    .locals 5

    .line 1
    iget-object p1, p1, Lc47$g;->a:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lj87;->c:Lc47$h;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lj87;->b:Lc47$d;

    .line 4
    new-instance v1, Lc47$b$a;

    invoke-direct {v1}, Lc47$b$a;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "addrs is empty"

    invoke-static {v2, v3}, Lc50;->t(ZLjava/lang/Object;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lc47$b$a;->a:Ljava/util/List;

    .line 7
    new-instance v2, Lc47$b;

    iget-object v3, v1, Lc47$b$a;->b:Lv27;

    iget-object v1, v1, Lc47$b$a;->c:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v1, v4}, Lc47$b;-><init>(Ljava/util/List;Lv27;[[Ljava/lang/Object;Lc47$a;)V

    .line 8
    invoke-virtual {v0, v2}, Lc47$d;->a(Lc47$b;)Lc47$h;

    move-result-object p1

    .line 9
    new-instance v0, Lj87$a;

    invoke-direct {v0, p0, p1}, Lj87$a;-><init>(Lj87;Lc47$h;)V

    invoke-virtual {p1, v0}, Lc47$h;->f(Lc47$j;)V

    .line 10
    iput-object p1, p0, Lj87;->c:Lc47$h;

    .line 11
    iget-object v0, p0, Lj87;->b:Lc47$d;

    sget-object v1, Li37;->e:Li37;

    new-instance v2, Lj87$b;

    invoke-static {p1}, Lc47$e;->b(Lc47$h;)Lc47$e;

    move-result-object v3

    invoke-direct {v2, v3}, Lj87$b;-><init>(Lc47$e;)V

    invoke-virtual {v0, v1, v2}, Lc47$d;->d(Li37;Lc47$i;)V

    .line 12
    invoke-virtual {p1}, Lc47$h;->d()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lc47$h;->g(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj87;->c:Lc47$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc47$h;->d()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj87;->c:Lc47$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc47$h;->e()V

    :cond_0
    return-void
.end method
