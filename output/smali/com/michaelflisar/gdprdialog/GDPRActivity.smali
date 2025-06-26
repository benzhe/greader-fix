.class public abstract Lcom/michaelflisar/gdprdialog/GDPRActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lpl6$b;


# instance fields
.field public v:Lhm6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lem6;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    invoke-virtual {v0}, Lhm6;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    .line 3
    iget-object v1, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 4
    iget-boolean v1, v1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->o:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Lhm6;->e:Lql6;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Lhm6;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhm6;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p0, p1}, Lhm6;->g(Ljava/lang/Object;Z)V

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    sget v1, Lcom/michaelflisar/gdprdialog/R$layout;->gdpr_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    new-instance v1, Lml6;

    invoke-direct {v1, p0}, Lml6;-><init>(Lcom/michaelflisar/gdprdialog/GDPRActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Lhm6;->b(Landroid/app/Activity;Landroid/view/View;Lhm6$a;)V

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p1, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 11
    iget-object v1, v1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 12
    invoke-virtual {v1}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object p1, p1, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 14
    iget-object p1, p1, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 15
    invoke-virtual {p1, p0}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu;->u(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_0
    sget p1, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_title:I

    invoke-virtual {v0, p1}, Lu;->t(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/michaelflisar/gdprdialog/GDPRActivity;->y()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    invoke-virtual {v0, p1}, Lhm6;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

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
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/michaelflisar/gdprdialog/GDPRActivity;->v:Lhm6;

    invoke-virtual {v0}, Lhm6;->e()V

    return-void
.end method
