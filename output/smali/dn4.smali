.class public final Ldn4;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lhl4;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lhl4;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final e:Lhl4;


# direct methods
.method public constructor <init>(Lhl4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Ldn4;->e:Lhl4;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldn4;->e:Lhl4;

    invoke-interface {v0}, Lhl4;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldn4;->e:Lhl4;

    invoke-interface {v0, p1}, Lhl4;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldn4;->e:Lhl4;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfn4;

    invoke-direct {v0, p0}, Lfn4;-><init>(Ldn4;)V

    return-object v0
.end method

.method public final k0()Lhl4;
    .locals 0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lgn4;

    invoke-direct {v0, p0, p1}, Lgn4;-><init>(Ldn4;I)V

    return-object v0
.end method

.method public final s0(Lvj4;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldn4;->e:Lhl4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
