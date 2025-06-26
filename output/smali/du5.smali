.class public final Ldu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lyt5;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lln5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lln5<",
            "Lyt5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljn5;Lln5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;",
            "Lln5<",
            "Lyt5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldu5;->e:Ljn5;

    .line 3
    iput-object p2, p0, Ldu5;->f:Lln5;

    return-void
.end method


# virtual methods
.method public d(Lbu5;)Lyt5;
    .locals 1

    .line 1
    iget-object v0, p0, Ldu5;->e:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyt5;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Ldu5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Ldu5;

    .line 3
    invoke-virtual {p0}, Ldu5;->size()I

    move-result v2

    invoke-virtual {p1}, Ldu5;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Ldu5;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ldu5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :cond_3
    move-object v3, v2

    check-cast v3, Lln5$a;

    invoke-virtual {v3}, Lln5$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v3}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyt5;

    .line 8
    move-object v4, p1

    check-cast v4, Lln5$a;

    invoke-virtual {v4}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyt5;

    .line 9
    invoke-virtual {v3, v4}, Lyt5;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public h(Lbu5;)Ldu5;
    .locals 2

    .line 1
    iget-object v0, p0, Ldu5;->e:Ljn5;

    invoke-virtual {v0, p1}, Ljn5;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt5;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Ldu5;->e:Ljn5;

    invoke-virtual {v1, p1}, Ljn5;->r(Ljava/lang/Object;)Ljn5;

    move-result-object p1

    .line 3
    iget-object v1, p0, Ldu5;->f:Lln5;

    invoke-virtual {v1, v0}, Lln5;->h(Ljava/lang/Object;)Lln5;

    move-result-object v0

    .line 4
    new-instance v1, Ldu5;

    invoke-direct {v1, p1, v0}, Ldu5;-><init>(Ljn5;Lln5;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ldu5;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Lln5$a;

    invoke-virtual {v2}, Lln5$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyt5;

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-virtual {v2}, Lyt5;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lyt5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldu5;->f:Lln5;

    invoke-virtual {v0}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldu5;->e:Ljn5;

    invoke-virtual {v0}, Ljn5;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ldu5;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    move-object v3, v1

    check-cast v3, Lln5$a;

    invoke-virtual {v3}, Lln5$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyt5;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
