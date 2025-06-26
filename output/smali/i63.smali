.class public final Li63;
.super Lg63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg63<",
        "Ls63$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg63;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
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

    check-cast p1, Ls63$c;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final b(Lz53;Ljava/lang/Object;Le63;Lk63;Ljava/lang/Object;Ll93;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lz53;",
            "Ljava/lang/Object;",
            "Le63;",
            "Lk63<",
            "Ls63$c;",
            ">;TUB;",
            "Ll93<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ls63$f;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final c(Le63;Le83;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Le63;->a:Ljava/util/Map;

    new-instance v0, Le63$a;

    invoke-direct {v0, p2, p3}, Le63$a;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls63$f;

    return-object p1
.end method

.method public final d(Lk53;Ljava/lang/Object;Le63;Lk63;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk53;",
            "Ljava/lang/Object;",
            "Le63;",
            "Lk63<",
            "Ls63$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ls63$f;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final e(Lz53;Ljava/lang/Object;Le63;Lk63;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz53;",
            "Ljava/lang/Object;",
            "Le63;",
            "Lk63<",
            "Ls63$c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ls63$f;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final f(Lga3;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga3;",
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

    check-cast p1, Ls63$c;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final g(Ljava/lang/Object;)Lk63;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lk63<",
            "Ls63$c;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ls63$d;

    iget-object p1, p1, Ls63$d;->zzitu:Lk63;

    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Lk63;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lk63<",
            "Ls63$c;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ls63$d;

    invoke-virtual {p1}, Ls63$d;->x()Lk63;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ls63$d;

    iget-object p1, p1, Ls63$d;->zzitu:Lk63;

    .line 2
    invoke-virtual {p1}, Lk63;->j()V

    return-void
.end method

.method public final j(Le83;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ls63$d;

    return p1
.end method
