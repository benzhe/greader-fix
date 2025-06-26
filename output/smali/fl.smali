.class public Lfl;
.super Lhl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhl<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxm;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ltl;->a(Landroid/content/Context;Lxm;)Ltl;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ltl;->a:Lnl;

    .line 3
    invoke-direct {p0, p1}, Lhl;-><init>(Lql;)V

    return-void
.end method


# virtual methods
.method public b(Ldm;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Ldm;->j:Lqj;

    .line 2
    iget-boolean p1, p1, Lqj;->b:Z

    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
