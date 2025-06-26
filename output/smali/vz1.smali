.class public final synthetic Lvz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lxw0;

.field public final b:Lsk2;

.field public final c:Lx31;


# direct methods
.method public constructor <init>(Lrz1;Lxw0;Lsk2;Lx31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvz1;->a:Lxw0;

    iput-object p3, p0, Lvz1;->b:Lsk2;

    iput-object p4, p0, Lvz1;->c:Lx31;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lvz1;->a:Lxw0;

    iget-object v0, p0, Lvz1;->b:Lsk2;

    iget-object v1, p0, Lvz1;->c:Lx31;

    .line 2
    iget-boolean v0, v0, Lsk2;->H:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lxw0;->p0()V

    .line 4
    :cond_0
    invoke-interface {p1}, Lxw0;->u()V

    .line 5
    sget-object v0, Ly40;->t0:Lo40;

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v2, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1}, Lxw0;->onPause()V

    .line 10
    :cond_1
    invoke-virtual {v1}, Lx31;->h()Le41;

    move-result-object p1

    return-object p1
.end method
