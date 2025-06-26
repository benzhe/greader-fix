.class public final Lfb4;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lp94;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lp94;"
    }
.end annotation


# instance fields
.field public final e:Lp94;


# direct methods
.method public constructor <init>(Lp94;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lfb4;->e:Lp94;

    return-void
.end method


# virtual methods
.method public final e()Lp94;
    .locals 0

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lfb4;->e:Lp94;

    .line 1
    invoke-interface {v0}, Lp94;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfb4;->e:Lp94;

    check-cast v0, Lo94;

    invoke-virtual {v0, p1}, Lo94;->h(I)Ljava/lang/String;

    move-result-object p1

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

    new-instance v0, Leb4;

    .line 1
    invoke-direct {v0, p0}, Leb4;-><init>(Lfb4;)V

    return-object v0
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

    new-instance v0, Ldb4;

    .line 1
    invoke-direct {v0, p0, p1}, Ldb4;-><init>(Lfb4;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lfb4;->e:Lp94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x(Lg84;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final z0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfb4;->e:Lp94;

    .line 1
    invoke-interface {v0, p1}, Lp94;->z0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
