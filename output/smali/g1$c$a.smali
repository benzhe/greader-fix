.class public Lg1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1$c;->c(Lj1;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lg1$d;

.field public final synthetic f:Landroid/view/MenuItem;

.field public final synthetic g:Lj1;

.field public final synthetic h:Lg1$c;


# direct methods
.method public constructor <init>(Lg1$c;Lg1$d;Landroid/view/MenuItem;Lj1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg1$c$a;->h:Lg1$c;

    iput-object p2, p0, Lg1$c$a;->e:Lg1$d;

    iput-object p3, p0, Lg1$c$a;->f:Landroid/view/MenuItem;

    iput-object p4, p0, Lg1$c$a;->g:Lj1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg1$c$a;->e:Lg1$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lg1$c$a;->h:Lg1$c;

    iget-object v1, v1, Lg1$c;->e:Lg1;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg1;->E:Z

    .line 3
    iget-object v0, v0, Lg1$d;->b:Lj1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj1;->c(Z)V

    .line 4
    iget-object v0, p0, Lg1$c$a;->h:Lg1$c;

    iget-object v0, v0, Lg1$c;->e:Lg1;

    iput-boolean v1, v0, Lg1;->E:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lg1$c$a;->f:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg1$c$a;->f:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lg1$c$a;->g:Lj1;

    iget-object v1, p0, Lg1$c$a;->f:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lj1;->r(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
