.class public abstract Lvk7;
.super Ltk7;
.source "SourceFile"


# instance fields
.field private final _context:Lrk7;

.field private transient intercepted:Lpk7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpk7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpk7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpk7<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lpk7;->getContext()Lrk7;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lvk7;-><init>(Lpk7;Lrk7;)V

    return-void
.end method

.method public constructor <init>(Lpk7;Lrk7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpk7<",
            "Ljava/lang/Object;",
            ">;",
            "Lrk7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ltk7;-><init>(Lpk7;)V

    iput-object p2, p0, Lvk7;->_context:Lrk7;

    return-void
.end method


# virtual methods
.method public getContext()Lrk7;
    .locals 1

    .line 1
    iget-object v0, p0, Lvk7;->_context:Lrk7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Lpk7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpk7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvk7;->intercepted:Lpk7;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lvk7;->getContext()Lrk7;

    move-result-object v0

    sget v1, Lqk7;->b:I

    sget-object v1, Lqk7$a;->a:Lqk7$a;

    invoke-interface {v0, v1}, Lrk7;->c(Lrk7$b;)Lrk7$a;

    move-result-object v0

    check-cast v0, Lqk7;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lqk7;->b(Lpk7;)Lpk7;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 3
    :goto_0
    iput-object v0, p0, Lvk7;->intercepted:Lpk7;

    :goto_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvk7;->intercepted:Lpk7;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lvk7;->getContext()Lrk7;

    move-result-object v1

    sget v2, Lqk7;->b:I

    sget-object v2, Lqk7$a;->a:Lqk7$a;

    invoke-interface {v1, v2}, Lrk7;->c(Lrk7$b;)Lrk7$a;

    move-result-object v1

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    check-cast v1, Lqk7;

    invoke-interface {v1, v0}, Lqk7;->a(Lpk7;)V

    .line 3
    :cond_0
    sget-object v0, Luk7;->e:Luk7;

    iput-object v0, p0, Lvk7;->intercepted:Lpk7;

    return-void
.end method
