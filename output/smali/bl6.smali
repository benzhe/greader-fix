.class public Lbl6;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lpj6;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lpj6;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final e:Lpj6;


# direct methods
.method public constructor <init>(Lpj6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lbl6;->e:Lpj6;

    return-void
.end method


# virtual methods
.method public F(Lqi6;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbl6;->e:Lpj6;

    invoke-interface {v0}, Lpj6;->S()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lbl6;->e:Lpj6;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
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
    new-instance v0, Lbl6$b;

    invoke-direct {v0, p0}, Lbl6$b;-><init>(Lbl6;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
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
    new-instance v0, Lbl6$a;

    invoke-direct {v0, p0, p1}, Lbl6$a;-><init>(Lbl6;I)V

    return-object v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lbl6;->e:Lpj6;

    invoke-interface {v0, p1}, Lpj6;->m(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p0()Lpj6;
    .locals 0

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbl6;->e:Lpj6;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
