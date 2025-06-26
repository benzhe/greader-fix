.class public final Ld0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public final synthetic e:Ld0;


# direct methods
.method public constructor <init>(Ld0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0$k;->e:Ld0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lj1;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lj1;->k()Lj1;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Ld0$k;->e:Ld0;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Ld0;->M(Landroid/view/Menu;)Ld0$j;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 3
    iget-object p2, p0, Ld0$k;->e:Ld0;

    iget v2, p1, Ld0$j;->a:I

    invoke-virtual {p2, v2, p1, v0}, Ld0;->D(ILd0$j;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Ld0$k;->e:Ld0;

    invoke-virtual {p2, p1, v1}, Ld0;->F(Ld0$j;Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Ld0$k;->e:Ld0;

    invoke-virtual {v0, p1, p2}, Ld0;->F(Ld0$j;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lj1;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lj1;->k()Lj1;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ld0$k;->e:Ld0;

    iget-boolean v1, v0, Ld0;->D:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ld0;->P()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ld0$k;->e:Ld0;

    iget-boolean v1, v1, Ld0;->P:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
