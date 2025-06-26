.class public Lxb$a;
.super Ls;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lxb;


# direct methods
.method public constructor <init>(Lxb;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb$a;->c:Lxb;

    invoke-direct {p0, p2}, Ls;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxb$a;->c:Lxb;

    .line 2
    invoke-virtual {v0}, Lxb;->U()Z

    .line 3
    iget-object v1, v0, Lxb;->o:Ls;

    .line 4
    iget-boolean v1, v1, Ls;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lxb;->f()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lxb;->n:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method
