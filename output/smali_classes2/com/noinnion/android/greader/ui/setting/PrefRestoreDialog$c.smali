.class public Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;
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
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Ljava/io/File;

    sget-object v0, Ldn6;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 7
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot access external storage: not mounted"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 5
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x109000f

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$c;->b:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->e:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
