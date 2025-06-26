.class public final Leq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua1;


# instance fields
.field public final e:Lxw0;


# direct methods
.method public constructor <init>(Lxw0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ly40;->w0:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Leq1;->e:Lxw0;

    return-void
.end method


# virtual methods
.method public final r(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Leq1;->e:Lxw0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lxw0;->onPause()V

    :cond_0
    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Leq1;->e:Lxw0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lxw0;->destroy()V

    :cond_0
    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Leq1;->e:Lxw0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lxw0;->onResume()V

    :cond_0
    return-void
.end method
