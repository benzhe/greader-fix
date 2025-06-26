.class public final Lxp4$a;
.super Lpk4$b;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxp4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$b<",
        "Lxp4;",
        "Lxp4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lxp4;->v()Lxp4;

    move-result-object v0

    invoke-direct {p0, v0}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method

.method public constructor <init>(Lbp4;)V
    .locals 0

    .line 2
    invoke-static {}, Lxp4;->v()Lxp4;

    move-result-object p1

    invoke-direct {p0, p1}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method


# virtual methods
.method public final k(Lip4$a;)Lxp4$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpk4$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lpk4$b;->f()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lpk4$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    check-cast v0, Lxp4;

    invoke-virtual {p1}, Lpk4$b;->j()Lam4;

    move-result-object p1

    check-cast p1, Lpk4;

    check-cast p1, Lip4;

    invoke-static {v0, p1}, Lxp4;->q(Lxp4;Lip4;)V

    return-object p0
.end method
