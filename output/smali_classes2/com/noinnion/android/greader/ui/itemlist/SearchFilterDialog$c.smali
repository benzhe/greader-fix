.class public Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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

.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->e:Lew6;

    invoke-virtual {v1}, Lew6;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lep6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->f:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    const v3, 0x7f1101d3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->f:Landroid/app/ProgressDialog;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mLabelText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->c:Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog;->mQueryText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/itemlist/SearchFilterDialog$c;->b:Ljava/lang/String;

    return-void
.end method
