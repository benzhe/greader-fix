.class public Lln5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lln5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 3
    sget v1, Ljn5$a;->a:I

    sget-object v1, Lin5;->a:Lin5;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    .line 5
    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    aput-object v4, v2, v3

    .line 11
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lhn5;

    invoke-direct {p1, p2, v2, v1}, Lhn5;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p1, v0, v1, p2}, Lrn5$b;->b(Ljava/util/List;Ljava/util/Map;Ljn5$a$a;Ljava/util/Comparator;)Lrn5;

    move-result-object p1

    .line 15
    :goto_1
    iput-object p1, p0, Lln5;->e:Ljn5;

    return-void
.end method

.method public constructor <init>(Ljn5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn5<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lln5;->e:Ljn5;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lln5;->e:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->d(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Lln5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lln5<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lln5;

    iget-object v1, p0, Lln5;->e:Ljn5;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p1

    invoke-direct {v0, p1}, Lln5;-><init>(Ljn5;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lln5;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lln5;

    .line 3
    iget-object v0, p0, Lln5;->e:Ljn5;

    iget-object p1, p1, Lln5;->e:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/Object;)Lln5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lln5<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lln5;->e:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->r(Ljava/lang/Object;)Ljn5;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lln5;->e:Ljn5;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lln5;

    invoke-direct {v0, p1}, Lln5;-><init>(Ljn5;)V

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lln5;->e:Ljn5;

    invoke-virtual {v0}, Ljn5;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lln5$a;

    iget-object v1, p0, Lln5;->e:Ljn5;

    invoke-virtual {v1}, Ljn5;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lln5$a;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lln5;->e:Ljn5;

    invoke-virtual {v0}, Ljn5;->size()I

    move-result v0

    return v0
.end method
