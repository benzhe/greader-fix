.class public abstract Lpc7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    return-void
.end method


# virtual methods
.method public final w()Lic7;
    .locals 1

    .line 1
    new-instance v0, Lti7;

    invoke-direct {v0}, Lti7;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lpc7;->x(Ltc7;)V

    .line 3
    iget-object v0, v0, Lti7;->e:Lic7;

    return-object v0
.end method

.method public abstract x(Ltc7;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltc7<",
            "-",
            "Lic7;",
            ">;)V"
        }
    .end annotation
.end method

.method public y()Lmb7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkf7;

    .line 2
    instance-of v1, p0, Lif7;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p0

    check-cast v1, Lif7;

    .line 4
    new-instance v2, Lhf7;

    .line 5
    invoke-interface {v1}, Lif7;->h()Lw38;

    move-result-object v3

    invoke-interface {v1}, Lif7;->c()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lhf7;-><init>(Lw38;I)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 6
    :goto_0
    invoke-direct {v0, v2}, Lkf7;-><init>(Lpc7;)V

    return-object v0
.end method
