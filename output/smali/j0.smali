.class public Lj0;
.super Lrb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 3

    .line 1
    instance-of v0, p1, Li0;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Li0;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Li0;->c(I)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Lrb;->setupDialog(Landroid/app/Dialog;I)V

    :goto_0
    return-void
.end method
