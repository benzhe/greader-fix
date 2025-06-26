.class public Lcom/noinnion/android/greader/ui/item/EditTagDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/item/EditTagDialog$f;,
        Lcom/noinnion/android/greader/ui/item/EditTagDialog$d;,
        Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;,
        Lcom/noinnion/android/greader/ui/item/EditTagDialog$c;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public e:J

.field public f:Lap6;

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lky6;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/app/ProgressDialog;

.field public mListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x102000a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->g:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->h:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->i:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->j:Ljava/util/Set;

    return-void
.end method

.method public static d(Lwb;J)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/item/EditTagDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "itemId"

    .line 3
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    check-cast p0, Lxb;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lqb;

    invoke-direct {p1, p0}, Lqb;-><init>(Lxb;)V

    const-string p0, "fragment_edit_tag"

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, p2, v0, p0, v1}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/noinnion/android/greader/ui/item/EditTagDialog$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$d;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;Lcom/noinnion/android/greader/ui/item/EditTagDialog$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100ed

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "itemId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->e:J

    .line 4
    :cond_0
    iget-wide v3, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->e:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v3, v4, v0}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->f:Lap6;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->f:Lap6;

    if-nez v0, :cond_2

    const v0, 0x7f11014c

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lrb;->dismiss()V

    :cond_2
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 10
    new-instance v0, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lt75;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->f:Lap6;

    iget-object v1, v1, Lap6;->h:Ljava/lang/String;

    .line 12
    iget-object v2, v0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v1, 0x7f11034e

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lt75;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    const/high16 v1, 0x1040000

    new-instance v3, Lcom/noinnion/android/greader/ui/item/EditTagDialog$a;

    invoke-direct {v3, p0}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$a;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;)V

    .line 14
    invoke-virtual {v0, v1, v3}, La0$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    const v1, 0x7f110327

    .line 15
    invoke-virtual {v0, v1, v2}, La0$a;->c(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c002e

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 18
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 19
    new-instance v2, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;

    invoke-direct {v2, p0, v0}, Lcom/noinnion/android/greader/ui/item/EditTagDialog$b;-><init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;La0;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 20
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 21
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object v0
.end method
