.class public Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;
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
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public final synthetic d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->f:Llp6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->b:Z

    iget-boolean v3, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->c:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lep6;->l(Llp6;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->h:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->h:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    const v4, 0x7f1101d3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->h:Landroid/app/ProgressDialog;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mExcludeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->b:Z

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->d:Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->mHideCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog$b;->c:Z

    return-void
.end method
