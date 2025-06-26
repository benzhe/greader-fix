.class public Lpn5;
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


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnn5;->a:Lnn5;

    invoke-direct {p0, p1, p2, v0, v0}, Lqn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lqn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

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
    new-instance v0, Lpn5;

    invoke-direct {v0, p1, p2, p3, p4}, Lpn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lon5;Lon5;)V

    return-object v0
.end method

.method public m()Lon5$a;
    .locals 1

    .line 1
    sget-object v0, Lon5$a;->e:Lon5$a;

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lqn5;->c:Lon5;

    .line 2
    invoke-interface {v0}, Lon5;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lqn5;->d:Lon5;

    .line 4
    invoke-interface {v1}, Lon5;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
