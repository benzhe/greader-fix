.class public final Lq93;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ll73;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ll73;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final e:Ll73;


# direct methods
.method public constructor <init>(Ll73;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lq93;->e:Ll73;

    return-void
.end method


# virtual methods
.method public final L(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lq93;->e:Ll73;

    invoke-interface {v0, p1}, Ll73;->L(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Lk53;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq93;->e:Ll73;

    invoke-interface {v0}, Ll73;->a0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lq93;->e:Ll73;

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
    new-instance v0, Ls93;

    invoke-direct {v0, p0}, Ls93;-><init>(Lq93;)V

    return-object v0
.end method

.method public final j0()Ll73;
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
    new-instance v0, Lp93;

    invoke-direct {v0, p0, p1}, Lp93;-><init>(Lq93;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq93;->e:Ll73;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
