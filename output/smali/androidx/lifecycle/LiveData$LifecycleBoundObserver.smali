.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.source "SourceFile"

# interfaces
.implements Lbd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.b;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final i:Ldd;

.field public final synthetic j:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ldd;Ljd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldd;",
            "Ljd<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->j:Landroidx/lifecycle/LiveData;

    .line 2
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$b;-><init>(Landroidx/lifecycle/LiveData;Ljd;)V

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i:Ldd;

    return-void
.end method


# virtual methods
.method public c(Ldd;Lad$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i:Ldd;

    invoke-interface {p1}, Ldd;->getLifecycle()Lad;

    move-result-object p1

    check-cast p1, Led;

    .line 2
    iget-object p1, p1, Led;->b:Lad$b;

    .line 3
    sget-object p2, Lad$b;->e:Lad$b;

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->j:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$b;->e:Ljd;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->g(Ljd;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->k()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$b;->d(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i:Ldd;

    invoke-interface {v0}, Ldd;->getLifecycle()Lad;

    move-result-object v0

    check-cast v0, Led;

    .line 2
    iget-object v0, v0, Led;->a:Ln3;

    invoke-virtual {v0, p0}, Ln3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ldd;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i:Ldd;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->i:Ldd;

    invoke-interface {v0}, Ldd;->getLifecycle()Lad;

    move-result-object v0

    check-cast v0, Led;

    .line 2
    iget-object v0, v0, Led;->b:Lad$b;

    .line 3
    sget-object v1, Lad$b;->h:Lad$b;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
