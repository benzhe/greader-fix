.class public final Leu2;
.super Lqt2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lqt2<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient h:Lrt2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrt2<",
            "TK;*>;"
        }
    .end annotation
.end field

.field public final transient i:Lnt2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnt2<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrt2;Lnt2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrt2<",
            "TK;*>;",
            "Lnt2<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lqt2;-><init>()V

    .line 2
    iput-object p1, p0, Leu2;->h:Lrt2;

    .line 3
    iput-object p2, p0, Leu2;->i:Lnt2;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leu2;->h:Lrt2;

    invoke-virtual {v0, p1}, Lrt2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Leu2;->i:Lnt2;

    .line 2
    invoke-virtual {v0, p1, p2}, Lnt2;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final h()Lhu2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhu2<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leu2;->i:Lnt2;

    .line 2
    invoke-virtual {v0}, Lnt2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lhu2;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leu2;->h()Lhu2;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lnt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnt2<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leu2;->i:Lnt2;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Leu2;->h:Lrt2;

    check-cast v0, Lzt2;

    .line 2
    iget v0, v0, Lzt2;->j:I

    return v0
.end method
