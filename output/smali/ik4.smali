.class public final Lik4;
.super Lfk4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfk4<",
        "Lpk4$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfk4;-><init>()V

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

    check-cast p1, Lpk4$f;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Lkk4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkk4<",
            "Lpk4$f;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lpk4$c;

    iget-object p1, p1, Lpk4$c;->zzc:Lkk4;

    return-object p1
.end method

.method public final c(Lvn4;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvn4;",
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

    check-cast p1, Lpk4$f;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final d(Lam4;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lpk4$c;

    return p1
.end method

.method public final e(Ljava/lang/Object;)Lkk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkk4<",
            "Lpk4$f;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lpk4$c;

    .line 2
    iget-object v0, p1, Lpk4$c;->zzc:Lkk4;

    .line 3
    iget-boolean v1, v0, Lkk4;->b:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lkk4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkk4;

    iput-object v0, p1, Lpk4$c;->zzc:Lkk4;

    .line 5
    :cond_0
    iget-object p1, p1, Lpk4$c;->zzc:Lkk4;

    return-object p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lpk4$c;

    iget-object p1, p1, Lpk4$c;->zzc:Lkk4;

    .line 2
    invoke-virtual {p1}, Lkk4;->h()V

    return-void
.end method
