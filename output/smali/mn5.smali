.class public Lmn5;
.super Lqn5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lqn5<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lon5<",
            "TK;TV;>;",
            "Lon5<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lqn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lmn5;->e:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)Lqn5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lon5<",
            "TK;TV;>;",
            "Lon5<",
            "TK;TV;>;)",
            "Lqn5<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lqn5;->a:Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lqn5;->b:Ljava/lang/Object;

    :cond_1
    if-nez p3, :cond_2

    .line 3
    iget-object p3, p0, Lqn5;->c:Lon5;

    :cond_2
    if-nez p4, :cond_3

    .line 4
    iget-object p4, p0, Lqn5;->d:Lon5;

    .line 5
    :cond_3
    new-instance v0, Lmn5;

    invoke-direct {v0, p1, p2, p3, p4}, Lmn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    return-object v0
.end method

.method public m()Lon5$a;
    .locals 1

    .line 1
    sget-object v0, Lon5$a;->f:Lon5$a;

    return-object v0
.end method

.method public s(Lon5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lon5<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lmn5;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lqn5;->c:Lon5;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set left after using size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Lmn5;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lqn5;->c:Lon5;

    .line 3
    invoke-interface {v0}, Lon5;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v1, p0, Lqn5;->d:Lon5;

    .line 5
    invoke-interface {v1}, Lon5;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lmn5;->e:I

    .line 6
    :cond_0
    iget v0, p0, Lmn5;->e:I

    return v0
.end method
