.class public final Laj6;
.super Lzi6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzi6<",
        "Lgj6$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzi6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgj6$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lyi6;Lak6;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Lyi6;->a:Ljava/util/Map;

    new-instance v0, Lyi6$a;

    invoke-direct {v0, p2, p3}, Lyi6$a;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgj6$e;

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcj6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcj6<",
            "Lgj6$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lgj6$c;

    iget-object p1, p1, Lgj6$c;->extensions:Lcj6;

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Lcj6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcj6<",
            "Lgj6$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lgj6$c;

    invoke-virtual {p1}, Lgj6$c;->B()Lcj6;

    move-result-object p1

    return-object p1
.end method

.method public e(Lak6;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lgj6$c;

    return p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lgj6$c;

    iget-object p1, p1, Lgj6$c;->extensions:Lcj6;

    .line 2
    invoke-virtual {p1}, Lcj6;->l()V

    return-void
.end method

.method public g(Lok6;Ljava/lang/Object;Lyi6;Lcj6;Ljava/lang/Object;Lyk6;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lok6;",
            "Ljava/lang/Object;",
            "Lyi6;",
            "Lcj6<",
            "Lgj6$d;",
            ">;TUB;",
            "Lyk6<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lgj6$e;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public h(Lok6;Ljava/lang/Object;Lyi6;Lcj6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lok6;",
            "Ljava/lang/Object;",
            "Lyi6;",
            "Lcj6<",
            "Lgj6$d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lgj6$e;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public i(Lqi6;Ljava/lang/Object;Lyi6;Lcj6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqi6;",
            "Ljava/lang/Object;",
            "Lyi6;",
            "Lcj6<",
            "Lgj6$d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lgj6$e;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public j(Lhl6;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl6;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgj6$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method
