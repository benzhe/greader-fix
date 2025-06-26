.class public final synthetic Lam6;
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

    iput-object p1, p0, Lam6;->e:Lhm6;

    iput-object p2, p0, Lam6;->f:Landroid/view/View;

    iput-object p3, p0, Lam6;->g:Landroid/app/Activity;

    iput-object p4, p0, Lam6;->h:Lhm6$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lam6;->e:Lhm6;

    iget-object v0, p0, Lam6;->f:Landroid/view/View;

    iget-object v1, p0, Lam6;->g:Landroid/app/Activity;

    iget-object v2, p0, Lam6;->h:Lhm6$a;

    .line 1
    sget-object v3, Lql6;->g:Lql6;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lhm6;->c(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p1, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 3
    iget-boolean v4, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 4
    iget-boolean v4, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    if-eqz v4, :cond_1

    .line 5
    iget-boolean v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->k:Z

    if-eqz v0, :cond_0

    .line 6
    iput v5, p1, Lhm6;->d:I

    .line 7
    invoke-virtual {p1}, Lhm6;->h()V

    goto :goto_0

    .line 8
    :cond_0
    iput-object v3, p1, Lhm6;->e:Lql6;

    .line 9
    invoke-virtual {p1, v1, v2}, Lhm6;->d(Landroid/content/Context;Lhm6$a;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lql6;->f:Lql6;

    iput-object v0, p1, Lhm6;->e:Lql6;

    .line 11
    invoke-virtual {p1, v1, v2}, Lhm6;->d(Landroid/content/Context;Lhm6$a;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->k:Z

    if-eqz v0, :cond_3

    .line 13
    iput v5, p1, Lhm6;->d:I

    .line 14
    invoke-virtual {p1}, Lhm6;->h()V

    goto :goto_0

    .line 15
    :cond_3
    iput-object v3, p1, Lhm6;->e:Lql6;

    .line 16
    invoke-virtual {p1, v1, v2}, Lhm6;->d(Landroid/content/Context;Lhm6$a;)V

    :cond_4
    :goto_0
    return-void
.end method
