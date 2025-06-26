.class public Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lip6;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-wide v0, v0, Lip6;->e:J

    invoke-static {v0, v1}, Lon6;->k(J)V

    .line 5
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    invoke-virtual {p1, v0, v1}, Lep6;->k(Lip6;Lip6;)V

    .line 6
    sget-object p1, Lon6;->a:Lew6;

    iget-object v0, p1, Lew6;->a:Lip6;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iput-object v0, p1, Lew6;->a:Lip6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->g:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    const v4, 0x7f1101d3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->g:Landroid/app/ProgressDialog;

    .line 3
    new-instance v0, Lip6;

    invoke-direct {v0}, Lip6;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->nameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lip6;->h:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->offlineSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->offlineSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_0
    iput v1, v0, Lip6;->u:I

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->displaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->displaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_1
    iput v1, v0, Lip6;->v:I

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->loadLinkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->loadLinkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_2
    iput v1, v0, Lip6;->w:I

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->readingModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->readingModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_3
    iput v1, v0, Lip6;->x:I

    .line 9
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->userAgentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->userAgentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_4
    iput v2, v0, Lip6;->y:I

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->excludeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lip6;->p:Z

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->hideCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lip6;->q:Z

    .line 12
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->notificationCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lip6;->r:Z

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->imageFitCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lip6;->s:Z

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->a:Lip6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->javascriptCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lip6;->t:Z

    return-void
.end method
