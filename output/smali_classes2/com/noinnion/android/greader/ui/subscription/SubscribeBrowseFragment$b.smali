.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/noinnion/android/reader/common/subscription/BundleItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f100001

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7f100000

    .line 5
    :goto_0
    invoke-static {p1, v0}, Lcom/noinnion/android/reader/common/subscription/BundleUtils;->parseBundles(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->a:Ljava/util/List;

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->f:Lav6;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->a:Ljava/util/List;

    .line 4
    iget-object v1, p1, Lav6;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p1, Lav6;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->f:Lav6;

    invoke-virtual {p1}, Lav6;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->f:Lav6;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0900fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment$b;->b:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
