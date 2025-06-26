.class public Lll;
.super Lhl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhl<",
        "Lcl;",
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
    iget-object p1, p1, Ltl;->c:Lrl;

    .line 3
    invoke-direct {p0, p1}, Lhl;-><init>(Lql;)V

    return-void
.end method


# virtual methods
.method public b(Ldm;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Ldm;->j:Lqj;

    .line 2
    iget-object p1, p1, Lqj;->a:Lwj;

    .line 3
    sget-object v0, Lwj;->g:Lwj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcl;

    .line 2
    iget-boolean v0, p1, Lcl;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p1, Lcl;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
