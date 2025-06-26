.class public Lxv5;
.super La37$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La37$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkw5;

.field public final synthetic b:[La37;

.field public final synthetic c:Law5;


# direct methods
.method public constructor <init>(Law5;Lkw5;[La37;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxv5;->c:Law5;

    iput-object p2, p0, Lxv5;->a:Lkw5;

    iput-object p3, p0, Lxv5;->b:[La37;

    invoke-direct {p0}, La37$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx47;Li47;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p2, p0, Lxv5;->a:Lkw5;

    check-cast p2, Liv5$c;

    .line 2
    iget-object v0, p2, Liv5$c;->a:Liv5$a;

    .line 3
    new-instance v1, Lmv5;

    invoke-direct {v1, p2, p1}, Lmv5;-><init>(Liv5$c;Lx47;)V

    .line 4
    invoke-virtual {v0, v1}, Liv5$a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lxv5;->c:Law5;

    .line 6
    iget-object p2, p2, Law5;->a:Lex5;

    .line 7
    invoke-virtual {p2, p1}, Lex5;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Li47;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lxv5;->a:Lkw5;

    check-cast v0, Liv5$c;

    .line 2
    iget-object v1, v0, Liv5$c;->a:Liv5$a;

    .line 3
    new-instance v2, Ljv5;

    invoke-direct {v2, v0, p1}, Ljv5;-><init>(Liv5$c;Li47;)V

    .line 4
    invoke-virtual {v1, v2}, Liv5$a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lxv5;->c:Law5;

    .line 6
    iget-object v0, v0, Law5;->a:Lex5;

    .line 7
    invoke-virtual {v0, p1}, Lex5;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lxv5;->a:Lkw5;

    check-cast v0, Liv5$c;

    .line 2
    iget-object v1, v0, Liv5$c;->a:Liv5$a;

    .line 3
    new-instance v2, Lkv5;

    invoke-direct {v2, v0, p1}, Lkv5;-><init>(Liv5$c;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1, v2}, Liv5$a;->a(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lxv5;->b:[La37;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La37;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lxv5;->c:Law5;

    .line 7
    iget-object v0, v0, Law5;->a:Lex5;

    .line 8
    invoke-virtual {v0, p1}, Lex5;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
