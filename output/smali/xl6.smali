.class public final synthetic Lxl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lhm6;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/app/Activity;

.field public final synthetic h:Lhm6$a;


# direct methods
.method public synthetic constructor <init>(Lhm6;Landroid/view/View;Landroid/app/Activity;Lhm6$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxl6;->e:Lhm6;

    iput-object p2, p0, Lxl6;->f:Landroid/view/View;

    iput-object p3, p0, Lxl6;->g:Landroid/app/Activity;

    iput-object p4, p0, Lxl6;->h:Lhm6$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lxl6;->e:Lhm6;

    iget-object v0, p0, Lxl6;->f:Landroid/view/View;

    iget-object v1, p0, Lxl6;->g:Landroid/app/Activity;

    iget-object v2, p0, Lxl6;->h:Lhm6$a;

    const/4 v3, 0x1

    .line 1
    invoke-virtual {p1, v0, v3}, Lhm6;->c(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lql6;->h:Lql6;

    iput-object v0, p1, Lhm6;->e:Lql6;

    .line 3
    invoke-virtual {p1, v1, v2}, Lhm6;->d(Landroid/content/Context;Lhm6$a;)V

    :cond_0
    return-void
.end method
