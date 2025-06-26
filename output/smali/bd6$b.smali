.class public final Lbd6$b;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lbd6;",
        "Lbd6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lbd6;->B()Lbd6;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lbd6$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lbd6;->B()Lbd6;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method


# virtual methods
.method public r(Ljc6$b;)Lbd6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Ljc6;

    invoke-static {v0, p1}, Lbd6;->H(Lbd6;Ljc6;)V

    return-object p0
.end method

.method public s(D)Lbd6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1, p2}, Lbd6;->M(Lbd6;D)V

    return-object p0
.end method

.method public t(J)Lbd6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1, p2}, Lbd6;->L(Lbd6;J)V

    return-object p0
.end method

.method public u(Lwc6$b;)Lbd6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lwc6;

    invoke-static {v0, p1}, Lbd6;->I(Lbd6;Lwc6;)V

    return-object p0
.end method

.method public v(Lwc6;)Lbd6$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lbd6;

    invoke-static {v0, p1}, Lbd6;->I(Lbd6;Lwc6;)V

    return-object p0
.end method
