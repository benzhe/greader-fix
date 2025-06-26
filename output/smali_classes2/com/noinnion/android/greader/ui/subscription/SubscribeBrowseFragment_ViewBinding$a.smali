.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment_ViewBinding$a;->e:Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;

    const-class v5, Landroid/widget/ListView;

    const-string v1, "onItemClick"

    const/4 v2, 0x0

    const-string v3, "onListItemClick"

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lbutterknife/internal/Utils;->castParam(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/reader/common/subscription/BundleItem;

    .line 4
    iget p2, p3, Lcom/noinnion/android/greader/ui/subscription/SubscribeBrowseFragment;->e:I

    const/4 p4, 0x2

    const/4 p5, 0x0

    if-ne p2, p4, :cond_0

    const p2, 0x7f100001

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p3

    iget-object p4, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem;->uid:Ljava/lang/String;

    iget-object p1, p1, Lcom/noinnion/android/reader/common/subscription/BundleItem;->title:Ljava/lang/String;

    .line 6
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/subscription/SubscribeBundleDialog;-><init>()V

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "itemId"

    .line 8
    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "title"

    .line 9
    invoke-virtual {v1, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url"

    .line 10
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    check-cast p3, Lxb;

    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p1, Lqb;

    invoke-direct {p1, p3}, Lqb;-><init>(Lxb;)V

    const-string p2, "fragment_subscribe_bundle"

    const/4 p3, 0x1

    .line 15
    invoke-virtual {p1, p5, v0, p2, p3}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
