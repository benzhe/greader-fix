.class public abstract Lr67;
.super Lf47;
.source "SourceFile"


# instance fields
.field public final a:Lf47;


# direct methods
.method public constructor <init>(Lf47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf47;-><init>()V

    .line 2
    iput-object p1, p0, Lr67;->a:Lf47;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0}, Ly27;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lj47;Lx27;)La37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TRequestT;TResponseT;>;",
            "Lx27;",
            ")",
            "La37<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0, p1, p2}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0}, Lf47;->i()V

    return-void
.end method

.method public j(Z)Li37;
    .locals 1

    .line 1
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0, p1}, Lf47;->j(Z)Li37;

    move-result-object p1

    return-object p1
.end method

.method public k(Li37;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0, p1, p2}, Lf47;->k(Li37;Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr67;->a:Lf47;

    invoke-virtual {v0}, Lf47;->l()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lr67;->a:Lf47;

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
