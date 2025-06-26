.class public Ltl6;
.super Lj0;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Lhm6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj0;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltl6;->f:Lhm6;

    .line 2
    iget-object v0, v0, Lhm6;->e:Lql6;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lrb;->dismiss()V

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Ltl6;->f:Lhm6;

    invoke-virtual {v0}, Lhm6;->e()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lrb;->setCancelable(Z)V

    .line 3
    iget-object p1, p0, Ltl6;->f:Lhm6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Ltl6;->e:Z

    invoke-virtual {p1, v0, v1}, Lhm6;->g(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Lhm6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhm6;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iput-object v0, p0, Ltl6;->f:Lhm6;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_PARENT_MUST_IMPLEMENT_CALLBACK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ltl6;->e:Z

    .line 4
    iget-object p1, p0, Ltl6;->f:Lhm6;

    .line 5
    iget-object p1, p1, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 6
    iget-object p1, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 7
    invoke-virtual {p1}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 8
    iget-object v0, p0, Ltl6;->f:Lhm6;

    .line 9
    iget-object v0, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 10
    iget v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->p:I

    .line 11
    invoke-virtual {p0, p1, v0}, Lrb;->setStyle(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iget-object v0, p0, Ltl6;->f:Lhm6;

    .line 13
    iget-object v0, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 14
    iget v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->p:I

    .line 15
    invoke-virtual {p0, p1, v0}, Lrb;->setStyle(II)V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    iget-object p1, p0, Ltl6;->f:Lhm6;

    .line 2
    iget-object p1, p1, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 3
    iget-boolean p1, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ltl6$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lrb;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Ltl6$a;-><init>(Ltl6;Landroid/content/Context;I)V

    .line 5
    new-instance v0, Lol6;

    invoke-direct {v0, p0}, Lol6;-><init>(Ltl6;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ltl6$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lrb;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Ltl6$b;-><init>(Ltl6;Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/michaelflisar/gdprdialog/R$layout;->gdpr_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ltl6;->f:Lhm6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lnl6;

    invoke-direct {v0, p0}, Lnl6;-><init>(Ltl6;)V

    invoke-virtual {p2, p3, p1, v0}, Lhm6;->b(Landroid/app/Activity;Landroid/view/View;Lhm6$a;)V

    .line 3
    iget-object p2, p0, Ltl6;->f:Lhm6;

    .line 4
    iget-object p2, p2, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 5
    iget-object p2, p2, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 6
    invoke-virtual {p2}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    sget p3, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_title:I

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(I)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltl6;->f:Lhm6;

    invoke-virtual {v0}, Lhm6;->e()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltl6;->f:Lhm6;

    invoke-virtual {v0}, Lhm6;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ltl6;->f:Lhm6;

    .line 3
    iget-object v0, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 4
    iget-boolean v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Ltl6;->d()V

    .line 6
    invoke-super {p0, p1}, Lrb;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Ltl6;->f:Lhm6;

    invoke-virtual {v0, p1}, Lhm6;->f(Landroid/os/Bundle;)V

    return-void
.end method
