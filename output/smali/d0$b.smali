.class public final Ld0$b;
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
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Ld0;


# direct methods
.method public constructor <init>(Ld0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0$b;->e:Ld0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lj1;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Ld0$b;->e:Ld0;

    invoke-virtual {p2, p1}, Ld0;->E(Lj1;)V

    return-void
.end method

.method public c(Lj1;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld0$b;->e:Ld0;

    invoke-virtual {v0}, Ld0;->P()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
